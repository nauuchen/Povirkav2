.class public Lorg/apache/poi/hssf/usermodel/EscherGraphics;
.super Ljava/awt/Graphics;
.source "EscherGraphics.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private background:Ljava/awt/Color;

.field private final escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

.field private font:Ljava/awt/Font;

.field private foreground:Ljava/awt/Color;

.field private final verticalPixelsPerPoint:F

.field private verticalPointsPerPixel:F

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;F)V
    .locals 4
    .param p1, "escherGroup"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p3, "forecolor"    # Ljava/awt/Color;
    .param p4, "verticalPointsPerPixel"    # F

    .line 82
    invoke-direct {p0}, Ljava/awt/Graphics;-><init>()V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 69
    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 83
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    .line 84
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 85
    iput p4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 86
    div-float/2addr v0, p4

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    .line 87
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 88
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 90
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;Ljava/awt/Font;F)V
    .locals 2
    .param p1, "escherGroup"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p3, "foreground"    # Ljava/awt/Color;
    .param p4, "font"    # Ljava/awt/Font;
    .param p5, "verticalPointsPerPixel"    # F

    .line 102
    invoke-direct {p0}, Ljava/awt/Graphics;-><init>()V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 69
    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 103
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    .line 104
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 105
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 107
    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 108
    iput p5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 109
    div-float/2addr v0, p5

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    .line 110
    return-void
.end method

.method private addToAll([II)[I
    .locals 3
    .param p1, "values"    # [I
    .param p2, "amount"    # I

    .line 265
    array-length v0, p1

    new-array v0, v0, [I

    .line 266
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 267
    aget v2, p1, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private findBiggest([I)I
    .locals 3
    .param p1, "values"    # [I

    .line 421
    const/high16 v0, -0x80000000

    .line 422
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 424
    aget v2, p1, v1

    if-le v2, v0, :cond_0

    .line 425
    aget v0, p1, v1

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private findSmallest([I)I
    .locals 3
    .param p1, "values"    # [I

    .line 432
    const v0, 0x7fffffff

    .line 433
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 435
    aget v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 436
    aget v0, p1, v1

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private matchFont(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 13
    .param p1, "matchFont"    # Ljava/awt/Font;

    .line 327
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-byte v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->findColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 329
    .local v0, "hssfColor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 330
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v4}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->findSimilarColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 331
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 332
    .local v1, "bold":Z
    :goto_0
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 333
    .local v2, "italic":Z
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v6

    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    int-to-short v7, v5

    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v5, v1

    move v9, v2

    invoke-virtual/range {v4 .. v12}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v4

    .line 341
    .local v4, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    if-nez v4, :cond_3

    .line 343
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v4

    .line 344
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setBold(Z)V

    .line 345
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setColor(S)V

    .line 346
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setFontHeight(S)V

    .line 347
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setFontName(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setItalic(Z)V

    .line 349
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setStrikeout(Z)V

    .line 350
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setTypeOffset(S)V

    .line 351
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setUnderline(B)V

    .line 354
    :cond_3
    return-object v4
.end method


# virtual methods
.method public clearRect(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 130
    .local v0, "color":Ljava/awt/Color;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setColor(Ljava/awt/Color;)V

    .line 131
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->fillRect(IIII)V

    .line 132
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setColor(Ljava/awt/Color;)V

    .line 133
    return-void
.end method

.method public clipRect(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 139
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "clipRect not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 147
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "copyArea not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 7

    .line 154
    new-instance v6, Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;Ljava/awt/Font;F)V

    .line 156
    .local v0, "g":Lorg/apache/poi/hssf/usermodel/EscherGraphics;
    return-object v0
.end method

.method public dispose()V
    .locals 0

    .line 162
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 169
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "drawArc not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 171
    :cond_0
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 6
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "bgcolor"    # Ljava/awt/Color;
    .param p11, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 181
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 182
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "drawImage not supported"

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 184
    :cond_0
    return v3
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 6
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "observer"    # Ljava/awt/image/ImageObserver;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 195
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "drawImage not supported"

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 196
    :cond_0
    return v3
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 14
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "color"    # Ljava/awt/Color;
    .param p7, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 202
    move-object v12, p1

    move-object/from16 v13, p7

    add-int v4, p2, p4

    add-int v5, p3, p5

    invoke-virtual {p1, v13}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v8

    invoke-virtual {p1, v13}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 13
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 208
    move-object v11, p1

    move-object/from16 v12, p6

    add-int v4, p2, p4

    add-int v5, p3, p5

    invoke-virtual {p1, v12}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v8

    invoke-virtual {p1, v12}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "color"    # Ljava/awt/Color;
    .param p5, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 214
    invoke-virtual {p1, p5}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p5}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 7
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 220
    invoke-virtual {p1, p4}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p4}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 226
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawLine(IIIII)V

    .line 227
    return-void
.end method

.method public drawLine(IIIII)V
    .locals 4
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "width"    # I

    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 232
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 233
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineWidth(I)V

    .line 234
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 235
    return-void
.end method

.method public drawOval(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 241
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineWidth(I)V

    .line 243
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setNoFill(Z)V

    .line 245
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 8
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 251
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v0

    .line 252
    .local v0, "right":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v1

    .line 253
    .local v1, "bottom":I
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v2

    .line 254
    .local v2, "left":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v3

    .line 255
    .local v3, "top":I
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v5, v2, v3, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    move-result-object v4

    .line 256
    .local v4, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    sub-int v5, v0, v2

    sub-int v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPolygonDrawArea(II)V

    .line 257
    neg-int v5, v2

    invoke-direct {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v5

    neg-int v6, v3

    invoke-direct {p0, p2, v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPoints([I[I)V

    .line 258
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineStyleColor(III)V

    .line 259
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineWidth(I)V

    .line 260
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setNoFill(Z)V

    .line 261
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 5
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 276
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "drawPolyline not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 278
    :cond_0
    return-void
.end method

.method public drawRect(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 284
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "drawRect not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 286
    :cond_0
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 293
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "drawRoundRect not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 295
    :cond_0
    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 300
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 304
    .local v0, "excelFont":Ljava/awt/Font;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SansSerif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Ljava/awt/Font;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    const-string v4, "Arial"

    invoke-direct {v1, v4, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    goto :goto_0

    .line 310
    :cond_1
    new-instance v1, Ljava/awt/Font;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getStyle()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v4}, Ljava/awt/Font;->getSize()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 312
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->getFontDetails(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-result-object v1

    .line 313
    .local v1, "d":Lorg/apache/poi/hssf/usermodel/FontDetails;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0xc

    .line 314
    .local v2, "width":I
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 315
    .local v3, "height":I
    int-to-float v4, p3

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v5}, Ljava/awt/Font;->getSize()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int p3, v4

    .line 316
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v6, p2, v2

    add-int v7, p3, v3

    invoke-direct {v5, p2, p3, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    move-result-object v4

    .line 317
    .local v4, "textbox":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setNoFill(Z)V

    .line 318
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setLineStyle(I)V

    .line 319
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v5, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 320
    .local v5, "s":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->matchFont(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v6

    .line 321
    .local v6, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 322
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 323
    return-void

    .line 301
    .end local v0    # "excelFont":Ljava/awt/Font;
    .end local v1    # "d":Lorg/apache/poi/hssf/usermodel/FontDetails;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "textbox":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .end local v5    # "s":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v6    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_2
    :goto_1
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 5
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 362
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "drawString not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 364
    :cond_0
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .line 370
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "fillArc not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 372
    :cond_0
    return-void
.end method

.method public fillOval(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 377
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 378
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 379
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyle(I)V

    .line 380
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setFillColor(III)V

    .line 381
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setNoFill(Z)V

    .line 383
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 8
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 408
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v0

    .line 409
    .local v0, "right":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v1

    .line 410
    .local v1, "bottom":I
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v2

    .line 411
    .local v2, "left":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v3

    .line 412
    .local v3, "top":I
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v5, v2, v3, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    move-result-object v4

    .line 413
    .local v4, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    sub-int v5, v0, v2

    sub-int v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPolygonDrawArea(II)V

    .line 414
    neg-int v5, v2

    invoke-direct {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v5

    neg-int v6, v3

    invoke-direct {p0, p2, v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPoints([I[I)V

    .line 415
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineStyleColor(III)V

    .line 416
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setFillColor(III)V

    .line 417
    return-void
.end method

.method public fillRect(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 444
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 445
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 446
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyle(I)V

    .line 447
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setFillColor(III)V

    .line 448
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 449
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .line 455
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "fillRoundRect not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 457
    :cond_0
    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .line 541
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    return-object v0
.end method

.method getEscherGraphics()Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 1
    .param p1, "f"    # Ljava/awt/Font;

    .line 488
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0
    .param p1, "background"    # Ljava/awt/Color;

    .line 546
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 547
    return-void
.end method

.method public setClip(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 494
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setClip(Ljava/awt/Shape;)V

    .line 495
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 0
    .param p1, "shape"    # Ljava/awt/Shape;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 502
    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0
    .param p1, "color"    # Ljava/awt/Color;

    .line 507
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 508
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 0
    .param p1, "f"    # Ljava/awt/Font;

    .line 513
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 514
    return-void
.end method

.method public setPaintMode()V
    .locals 5
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 520
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setPaintMode not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 5
    .param p1, "color"    # Ljava/awt/Color;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 528
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setXORMode not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 530
    :cond_0
    return-void
.end method

.method public translate(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 535
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "translate not supported"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 537
    :cond_0
    return-void
.end method
