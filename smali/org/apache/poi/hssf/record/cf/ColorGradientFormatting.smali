.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
.super Ljava/lang/Object;
.source "ColorGradientFormatting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static background:Lorg/apache/poi/util/BitField;

.field private static clamp:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->log:Lorg/apache/poi/util/POILogger;

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    .line 41
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 44
    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 45
    new-array v1, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 46
    new-array v0, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 8
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 49
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 50
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 51
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 52
    .local v1, "numI":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    .line 53
    .local v2, "numG":I
    if-eq v1, v2, :cond_0

    .line 54
    sget-object v3, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->log:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent Color Gradient defintion, found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 56
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 58
    new-array v0, v1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 60
    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    new-array v0, v2, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 63
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 64
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    .line 65
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-instance v4, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 2
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 110
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 111
    .local v0, "value":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private updateThresholdPositions()V
    .locals 6

    .line 115
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 116
    .local v2, "step":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 117
    aget-object v1, v1, v0

    int-to-double v4, v0

    mul-double v4, v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->setPosition(D)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 137
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>()V

    .line 138
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 139
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 140
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v2, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 141
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iget-object v2, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getDataLength()I
    .locals 6

    .line 147
    const/4 v0, 0x6

    .line 148
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 149
    .local v4, "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 148
    .end local v4    # "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 152
    .local v4, "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 153
    nop

    .end local v4    # "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    add-int/lit8 v0, v0, 0x8

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return v0
.end method

.method public getNumControlPoints()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    return v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object v0
.end method

.method public isAppliesToBackground()Z
    .locals 1

    .line 107
    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isClampToCurve()Z
    .locals 1

    .line 104
    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 159
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 160
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 161
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 162
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 163
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 165
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .local v0, "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 166
    .local v3, "t":Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 165
    .end local v3    # "t":Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 170
    .local v0, "step":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 171
    int-to-double v3, v2

    mul-double v3, v3, v0

    invoke-interface {p1, v3, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 173
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    aget-object v3, v3, v2

    .line 174
    .local v3, "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 170
    .end local v3    # "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 1
    .param p1, "colors"    # [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 100
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 101
    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 5
    .param p1, "num"    # I

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    if-eq p1, v1, :cond_0

    .line 74
    new-array v1, p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 75
    .local v1, "nt":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    new-array v2, p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 77
    .local v2, "nc":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    .local v0, "copy":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 82
    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 84
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    .line 86
    .end local v0    # "copy":I
    .end local v1    # "nt":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .end local v2    # "nc":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    :cond_0
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V
    .locals 1
    .param p1, "thresholds"    # [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 93
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Color Gradient Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "          .clamp     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isClampToCurve()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "          .background= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isAppliesToBackground()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 127
    .local v4, "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 126
    .end local v4    # "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 130
    .local v4, "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    .end local v4    # "c":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const-string v1, "    [/Color Gradient Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
