.class public Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "HSSFExtendedColor.java"


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0
    .param p1, "color"    # Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 39
    return-void
.end method


# virtual methods
.method public getARGB()[B
    .locals 5

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 76
    .local v0, "argb":[B
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object v1

    .line 77
    .local v1, "rgba":[B
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 78
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    aget-byte v2, v1, v4

    aput-byte v2, v0, v3

    .line 80
    return-object v0
.end method

.method protected getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getColorIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method protected getIndexedRGB()[B
    .locals 5

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result v0

    .line 114
    .local v0, "indexNum":I
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 115
    .local v1, "indexed":Lorg/apache/poi/hssf/util/HSSFColor;
    if-eqz v1, :cond_0

    .line 116
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 117
    .local v2, "rgb":[B
    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v3

    const/4 v4, 0x0

    aget-short v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 118
    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v3

    const/4 v4, 0x1

    aget-short v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 119
    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v3

    const/4 v4, 0x2

    aget-short v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 120
    return-object v2

    .line 123
    .end local v0    # "indexNum":I
    .end local v1    # "indexed":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v2    # "rgb":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRGB()[B
    .locals 4

    .line 67
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 68
    .local v1, "rgb":[B
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object v2

    .line 69
    .local v2, "rgba":[B
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-object v1
.end method

.method protected getStoredRBG()[B
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getARGB()[B

    move-result-object v0

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getThemeIndex()I

    move-result v0

    return v0
.end method

.method public getTint()D
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public isAuto()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndexed()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRGB()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThemed()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRGB([B)V
    .locals 6
    .param p1, "rgb"    # [B

    .line 88
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 90
    .local v0, "rgba":[B
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    const/4 v2, -0x1

    aput-byte v2, v0, v3

    .line 92
    .end local v0    # "rgba":[B
    goto :goto_0

    .line 94
    :cond_0
    aget-byte v0, p1, v2

    .line 95
    .local v0, "a":B
    const/4 v4, 0x1

    aget-byte v5, p1, v4

    aput-byte v5, p1, v2

    .line 96
    aget-byte v2, p1, v1

    aput-byte v2, p1, v4

    .line 97
    aget-byte v2, p1, v3

    aput-byte v2, p1, v1

    .line 98
    aput-byte v0, p1, v3

    .line 99
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setRGBA([B)V

    .line 101
    .end local v0    # "a":B
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setType(I)V

    .line 102
    return-void
.end method

.method public setTint(D)V
    .locals 1
    .param p1, "tint"    # D

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setTint(D)V

    .line 109
    return-void
.end method
