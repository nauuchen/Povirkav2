.class public abstract Lorg/apache/poi/ss/usermodel/ExtendedColor;
.super Ljava/lang/Object;
.source "ExtendedColor.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Color;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTint(ID)B
    .locals 6
    .param p0, "lum"    # I
    .param p1, "tint"    # D

    .line 169
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v0

    if-lez v4, :cond_0

    .line 170
    int-to-double v0, p0

    sub-double v4, v2, p1

    mul-double v0, v0, v4

    sub-double/2addr v2, p1

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v2, v2, v4

    sub-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 171
    :cond_0
    cmpg-double v4, p1, v0

    if-gez v4, :cond_1

    .line 172
    int-to-double v0, p0

    add-double/2addr v2, p1

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 174
    :cond_1
    int-to-byte v0, p0

    return v0
.end method


# virtual methods
.method public abstract getARGB()[B
.end method

.method public getARGBHex()Ljava/lang/String;
    .locals 10

    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getARGB()[B

    move-result-object v0

    .line 134
    .local v0, "rgb":[B
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    return-object v1

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    .local v2, "arr$":[B
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    .line 140
    .local v5, "c":B
    and-int/lit16 v6, v5, 0xff

    .line 141
    .local v6, "i":I
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "cs":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 143
    const/16 v8, 0x30

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .end local v5    # "c":B
    .end local v6    # "i":I
    .end local v7    # "cs":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "arr$":[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract getIndex()S
.end method

.method protected abstract getIndexedRGB()[B
.end method

.method public abstract getRGB()[B
.end method

.method protected getRGBOrARGB()[B
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getIndex()S

    move-result v0

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getIndexedRGB()[B

    move-result-object v0

    .line 94
    .local v0, "rgb":[B
    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 100
    .end local v0    # "rgb":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getStoredRBG()[B

    move-result-object v0

    return-object v0
.end method

.method public getRGBWithTint()[B
    .locals 5

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getStoredRBG()[B

    move-result-object v0

    .line 114
    .local v0, "rgb":[B
    if-eqz v0, :cond_1

    .line 115
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 116
    const/4 v1, 0x3

    new-array v2, v1, [B

    .line 117
    .local v2, "tmp":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    move-object v0, v2

    .line 120
    .end local v2    # "tmp":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getTint()D

    move-result-wide v1

    .line 121
    .local v1, "tint":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 122
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, v1, v2}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->applyTint(ID)B

    move-result v4

    aput-byte v4, v0, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "tint":D
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method protected abstract getStoredRBG()[B
.end method

.method public abstract getTheme()I
.end method

.method public abstract getTint()D
.end method

.method public abstract isAuto()Z
.end method

.method public abstract isIndexed()Z
.end method

.method public abstract isRGB()Z
.end method

.method public abstract isThemed()Z
.end method

.method public setARGBHex(Ljava/lang/String;)V
    .locals 4
    .param p1, "argb"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be of the form 112233 or FFEEDDCC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 158
    .local v0, "rgb":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 159
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "part":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 158
    .end local v2    # "part":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setRGB([B)V

    .line 163
    .end local v0    # "rgb":[B
    nop

    .line 166
    return-void
.end method

.method protected setColor(Ljava/awt/Color;)V
    .locals 3
    .param p1, "clr"    # Ljava/awt/Color;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setRGB([B)V

    .line 34
    return-void
.end method

.method public abstract setRGB([B)V
.end method

.method public abstract setTint(D)V
.end method
