.class public Lorg/apache/poi/xssf/usermodel/XSSFColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "XSSFColor.java"


# instance fields
.field private final ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

.field private final indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 0
    .param p1, "clr"    # Ljava/awt/Color;

    .line 69
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setColor(Ljava/awt/Color;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 3
    .param p1, "indexedColor"    # Lorg/apache/poi/ss/usermodel/IndexedColors;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 88
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    iget-short v1, p1, Lorg/apache/poi/ss/usermodel/IndexedColors;->index:S

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 43
    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .param p2, "map"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 53
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 54
    return-void
.end method

.method public constructor <init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1
    .param p1, "rgb"    # [B
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 79
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 81
    return-void
.end method

.method private sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 388
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 389
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 392
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 415
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 4
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 379
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 383
    :cond_1
    return v1

    .line 385
    :cond_2
    return v2
.end method

.method private sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 4
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 397
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 398
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 401
    :cond_1
    return v1

    .line 403
    :cond_2
    return v2
.end method

.method private sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 406
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 407
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 410
    :cond_1
    return v1

    .line 412
    :cond_2
    return v2
.end method

.method public static toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 2
    .param p0, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 366
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only XSSFColor objects are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 420
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 421
    return v1

    .line 424
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 429
    .local v0, "other":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getARGB()[B
    .locals 5

    .line 198
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getRGBOrARGB()[B

    move-result-object v0

    .line 199
    .local v0, "rgb":[B
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    return-object v1

    .line 203
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 205
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 206
    .local v1, "tmp":[B
    const/4 v3, -0x1

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 207
    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    return-object v1

    .line 210
    .end local v1    # "tmp":[B
    :cond_1
    return-object v0
.end method

.method public getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    return-object v0
.end method

.method public getIndex()S
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getIndexed()S
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v0

    return v0
.end method

.method protected getIndexedRGB()[B
    .locals 2

    .line 220
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/xssf/usermodel/IndexedColorMap;->getRGB(I)[B

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object v0

    return-object v0

    .line 224
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRGB()[B
    .locals 5

    .line 178
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getRGBOrARGB()[B

    move-result-object v0

    .line 179
    .local v0, "rgb":[B
    if-nez v0, :cond_0

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_0
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 185
    const/4 v1, 0x3

    new-array v2, v1, [B

    .line 186
    .local v2, "tmp":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    return-object v2

    .line 189
    .end local v2    # "tmp":[B
    :cond_1
    return-object v0
.end method

.method protected getStoredRBG()[B
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v0

    return-object v0
.end method

.method public getTheme()I
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getTint()D
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasAlpha()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasTint()Z
    .locals 6

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 145
    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuto()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getAuto()Z

    move-result v0

    return v0
.end method

.method public isIndexed()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v0

    return v0
.end method

.method public isRGB()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    return v0
.end method

.method public isThemed()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v0

    return v0
.end method

.method public setAuto(Z)V
    .locals 1
    .param p1, "auto"    # Z

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setAuto(Z)V

    .line 104
    return-void
.end method

.method public setIndexed(I)V
    .locals 3
    .param p1, "indexed"    # I

    .line 169
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 170
    return-void
.end method

.method public setRGB([B)V
    .locals 1
    .param p1, "rgb"    # [B

    .line 232
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 233
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "theme"    # I

    .line 250
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    .line 251
    return-void
.end method

.method public setTint(D)V
    .locals 1
    .param p1, "tint"    # D

    .line 342
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTint(D)V

    .line 343
    return-void
.end method
