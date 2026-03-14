.class public Lorg/apache/poi/util/Units;
.super Ljava/lang/Object;
.source "Units.java"


# static fields
.field public static final DEFAULT_CHARACTER_WIDTH:F = 7.0017f

.field public static final EMU_PER_CENTIMETER:I = 0x57e40

.field public static final EMU_PER_CHARACTER:I = 0x10483

.field public static final EMU_PER_PIXEL:I = 0x2535

.field public static final EMU_PER_POINT:I = 0x319c

.field public static final MASTER_DPI:I = 0x240

.field public static final PIXEL_DPI:I = 0x60

.field public static final POINT_DPI:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TwipsToEMU(S)I
    .locals 4
    .param p0, "twips"    # S

    .line 167
    int-to-double v0, p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide v2, 0x40c8ce0000000000L    # 12700.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static charactersToEMU(D)I
    .locals 2
    .param p0, "characters"    # D

    .line 151
    double-to-int v0, p0

    const v1, 0x10483

    mul-int v0, v0, v1

    return v0
.end method

.method public static columnWidthToEMU(I)I
    .locals 4
    .param p0, "columnWidth"    # I

    .line 159
    int-to-double v0, p0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->charactersToEMU(D)I

    move-result v0

    return v0
.end method

.method public static doubleToFixedPoint(D)I
    .locals 8
    .param p0, "floatPoint"    # D

    .line 117
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rem-double v0, p0, v0

    .line 118
    .local v0, "fractionalPart":D
    sub-double v2, p0, v0

    .line 119
    .local v2, "integralPart":D
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 120
    .local v4, "i":I
    const-wide/high16 v5, 0x40f0000000000000L    # 65536.0

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 121
    .local v5, "f":I
    shl-int/lit8 v6, v4, 0x10

    const v7, 0xffff

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    return v6
.end method

.method public static fixedPointToDouble(I)D
    .locals 8
    .param p0, "fixedPoint"    # I

    .line 103
    shr-int/lit8 v0, p0, 0x10

    .line 104
    .local v0, "i":I
    const v1, 0xffff

    and-int/2addr v1, p0

    .line 105
    .local v1, "f":I
    int-to-double v2, v0

    int-to-double v4, v1

    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    return-wide v2
.end method

.method public static masterToPoints(I)D
    .locals 4
    .param p0, "masterDPI"    # I

    .line 125
    int-to-double v0, p0

    .line 126
    .local v0, "points":D
    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double v0, v0, v2

    .line 127
    const-wide/high16 v2, 0x4082000000000000L    # 576.0

    div-double/2addr v0, v2

    .line 128
    return-wide v0
.end method

.method public static pixelToEMU(I)I
    .locals 1
    .param p0, "pixels"    # I

    .line 82
    mul-int/lit16 v0, p0, 0x2535

    return v0
.end method

.method public static pixelToPoints(I)D
    .locals 4
    .param p0, "pixel"    # I

    .line 144
    int-to-double v0, p0

    .line 145
    .local v0, "points":D
    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double v0, v0, v2

    .line 146
    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    div-double/2addr v0, v2

    .line 147
    return-wide v0
.end method

.method public static pointsToMaster(D)I
    .locals 2
    .param p0, "points"    # D

    .line 132
    const-wide/high16 v0, 0x4082000000000000L    # 576.0

    mul-double p0, p0, v0

    .line 133
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    div-double/2addr p0, v0

    .line 134
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static pointsToPixel(D)I
    .locals 2
    .param p0, "points"    # D

    .line 138
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    mul-double p0, p0, v0

    .line 139
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    div-double/2addr p0, v0

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static toEMU(D)I
    .locals 2
    .param p0, "points"    # D

    .line 73
    const-wide v0, 0x40c8ce0000000000L    # 12700.0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static toPoints(J)D
    .locals 4
    .param p0, "emu"    # J

    .line 91
    long-to-double v0, p0

    const-wide v2, 0x40c8ce0000000000L    # 12700.0

    div-double/2addr v0, v2

    return-wide v0
.end method
