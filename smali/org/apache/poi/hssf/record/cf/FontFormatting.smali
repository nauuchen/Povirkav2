.class public final Lorg/apache/poi/hssf/record/cf/FontFormatting;
.super Ljava/lang/Object;
.source "FontFormatting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FONT_CELL_HEIGHT_PRESERVED:I = -0x1

.field private static final FONT_WEIGHT_BOLD:S = 0x2bcs

.field private static final FONT_WEIGHT_NORMAL:S = 0x190s

.field private static final OFFSET_ESCAPEMENT_TYPE:I = 0x4a

.field private static final OFFSET_ESCAPEMENT_TYPE_MODIFIED:I = 0x5c

.field private static final OFFSET_FONT_COLOR_INDEX:I = 0x50

.field private static final OFFSET_FONT_FORMATING_END:I = 0x74

.field private static final OFFSET_FONT_HEIGHT:I = 0x40

.field private static final OFFSET_FONT_NAME:I = 0x0

.field private static final OFFSET_FONT_OPTIONS:I = 0x44

.field private static final OFFSET_FONT_WEIGHT:I = 0x48

.field private static final OFFSET_FONT_WEIGHT_MODIFIED:I = 0x64

.field private static final OFFSET_NOT_USED1:I = 0x68

.field private static final OFFSET_NOT_USED2:I = 0x6c

.field private static final OFFSET_NOT_USED3:I = 0x70

.field private static final OFFSET_OPTION_FLAGS:I = 0x58

.field private static final OFFSET_UNDERLINE_TYPE:I = 0x4c

.field private static final OFFSET_UNDERLINE_TYPE_MODIFIED:I = 0x60

.field private static final RAW_DATA_SIZE:I = 0x76

.field public static final SS_NONE:S = 0x0s

.field public static final SS_SUB:S = 0x2s

.field public static final SS_SUPER:S = 0x1s

.field public static final U_DOUBLE:B = 0x2t

.field public static final U_DOUBLE_ACCOUNTING:B = 0x22t

.field public static final U_NONE:B = 0x0t

.field public static final U_SINGLE:B = 0x1t

.field public static final U_SINGLE_ACCOUNTING:B = 0x21t

.field private static final cancellation:Lorg/apache/poi/util/BitField;

.field private static final cancellationModified:Lorg/apache/poi/util/BitField;

.field private static final outline:Lorg/apache/poi/util/BitField;

.field private static final outlineModified:Lorg/apache/poi/util/BitField;

.field private static final posture:Lorg/apache/poi/util/BitField;

.field private static final shadow:Lorg/apache/poi/util/BitField;

.field private static final shadowModified:Lorg/apache/poi/util/BitField;

.field private static final styleModified:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _rawData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/cf/FontFormatting;->posture:Lorg/apache/poi/util/BitField;

    .line 56
    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outline:Lorg/apache/poi/util/BitField;

    .line 57
    const/16 v2, 0x10

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadow:Lorg/apache/poi/util/BitField;

    .line 58
    const/16 v3, 0x80

    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellation:Lorg/apache/poi/util/BitField;

    .line 62
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->styleModified:Lorg/apache/poi/util/BitField;

    .line 63
    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outlineModified:Lorg/apache/poi/util/BitField;

    .line 64
    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadowModified:Lorg/apache/poi/util/BitField;

    .line 65
    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellationModified:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x76

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    .line 92
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontHeight(I)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setItalic(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWieghtModified(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOutline(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShadow(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setStrikeout(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    .line 99
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    .line 102
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    .line 103
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    .line 104
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    .line 108
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineTypeModified(Z)V

    .line 110
    invoke-direct {p0, v1, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    .line 111
    const/16 v0, 0x68

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 112
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 113
    const/16 v0, 0x70

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 114
    const/16 v0, 0x74

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x76

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getFontOption(Lorg/apache/poi/util/BitField;)Z
    .locals 2
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 177
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    .line 178
    .local v0, "options":I
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    return v1
.end method

.method private getInt(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 131
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    return v0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 3
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 364
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    .line 365
    .local v0, "optionFlags":I
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    .line 366
    .local v1, "value":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getShort(I)S
    .locals 1
    .param p1, "offset"    # I

    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    return v0
.end method

.method private setFontOption(ZLorg/apache/poi/util/BitField;)V
    .locals 2
    .param p1, "option"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 170
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v1

    .line 171
    .local v1, "options":I
    invoke-virtual {p2, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 172
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 173
    return-void
.end method

.method private setFontWeight(S)V
    .locals 2
    .param p1, "pbw"    # S

    .line 255
    move v0, p1

    .line 256
    .local v0, "bw":S
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/16 v0, 0x64

    .line 257
    :cond_0
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    const/16 v0, 0x3e8

    .line 258
    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    .line 259
    return-void
.end method

.method private setInt(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {v0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 135
    return-void
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 3
    .param p1, "modified"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 371
    xor-int/lit8 v0, p1, 0x1

    .line 372
    .local v0, "value":I
    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v2

    .line 373
    .local v2, "optionFlags":I
    invoke-virtual {p2, v2, v0}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v2

    .line 374
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 375
    return-void
.end method

.method private setShort(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    int-to-short v1, p2

    invoke-static {v0, p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->clone()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 5

    .line 536
    new-instance v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>()V

    .line 537
    .local v0, "other":Lorg/apache/poi/hssf/record/cf/FontFormatting;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    iget-object v2, v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 143
    const/16 v0, 0x76

    return v0
.end method

.method public getEscapementType()S
    .locals 1

    .line 304
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getFontColorIndex()S
    .locals 1

    .line 355
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFontHeight()I
    .locals 1

    .line 165
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getFontWeight()S
    .locals 1

    .line 280
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getRawRecord()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    return-object v0
.end method

.method public getUnderlineType()S
    .locals 1

    .line 333
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result v0

    return v0
.end method

.method public isBold()Z
    .locals 2

    .line 291
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v0

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEscapementTypeModified()Z
    .locals 2

    .line 425
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    .line 426
    .local v0, "escapementModified":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFontCancellationModified()Z
    .locals 1

    .line 415
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellationModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isFontOutlineModified()Z
    .locals 1

    .line 391
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outlineModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isFontShadowModified()Z
    .locals 1

    .line 401
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadowModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isFontStyleModified()Z
    .locals 1

    .line 380
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->styleModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isFontWeightModified()Z
    .locals 2

    .line 449
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    .line 450
    .local v0, "fontStyleModified":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isItalic()Z
    .locals 1

    .line 202
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->posture:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isOutlineOn()Z
    .locals 1

    .line 212
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outline:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isShadowOn()Z
    .locals 1

    .line 222
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadow:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isStruckout()Z
    .locals 1

    .line 243
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellation:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isUnderlineTypeModified()Z
    .locals 2

    .line 437
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v0

    .line 438
    .local v0, "underlineModified":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .line 268
    if-eqz p1, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWeight(S)V

    .line 269
    return-void
.end method

.method public setEscapementType(S)V
    .locals 1
    .param p1, "escapementType"    # S

    .line 317
    const/16 v0, 0x4a

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    .line 318
    return-void
.end method

.method public setEscapementTypeModified(Z)V
    .locals 2
    .param p1, "modified"    # Z

    .line 420
    xor-int/lit8 v0, p1, 0x1

    .line 421
    .local v0, "value":I
    const/16 v1, 0x5c

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 422
    return-void
.end method

.method public setFontCancellationModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 410
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellationModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 411
    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 1
    .param p1, "fci"    # S

    .line 360
    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 361
    return-void
.end method

.method public setFontHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 155
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 156
    return-void
.end method

.method public setFontOutlineModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 396
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outlineModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 397
    return-void
.end method

.method public setFontShadowModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 406
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadowModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 407
    return-void
.end method

.method public setFontStyleModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 386
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->styleModified:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 387
    return-void
.end method

.method public setFontWieghtModified(Z)V
    .locals 2
    .param p1, "modified"    # Z

    .line 443
    xor-int/lit8 v0, p1, 0x1

    .line 444
    .local v0, "value":I
    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 445
    return-void
.end method

.method public setItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z

    .line 190
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->posture:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    .line 191
    return-void
.end method

.method public setOutline(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 207
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->outline:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    .line 208
    return-void
.end method

.method public setShadow(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 217
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->shadow:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    .line 218
    return-void
.end method

.method public setStrikeout(Z)V
    .locals 1
    .param p1, "strike"    # Z

    .line 232
    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->cancellation:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    .line 233
    return-void
.end method

.method public setUnderlineType(S)V
    .locals 1
    .param p1, "underlineType"    # S

    .line 349
    const/16 v0, 0x4c

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    .line 350
    return-void
.end method

.method public setUnderlineTypeModified(Z)V
    .locals 2
    .param p1, "modified"    # Z

    .line 431
    xor-int/lit8 v0, p1, 0x1

    .line 432
    .local v0, "value":I
    const/16 v1, 0x60

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    .line 433
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 455
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 456
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Font Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v1, "\t.font height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " twips\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_1

    .line 462
    const-string v1, "\t.font posture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Italic"

    goto :goto_0

    :cond_0
    const-string v3, "Normal"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 466
    :cond_1
    const-string v1, "\t.font posture = ]not modified]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const-string v1, "\t.font outline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isOutlineOn()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 475
    :cond_2
    const-string v1, "\t.font outline is not modified\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontShadowModified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    const-string v1, "\t.font shadow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isShadowOn()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 484
    :cond_3
    const-string v1, "\t.font shadow is not modified\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontCancellationModified()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    const-string v1, "\t.font strikeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isStruckout()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 493
    :cond_4
    const-string v1, "\t.font strikeout is not modified\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v1

    const-string v3, "0x"

    if-eqz v1, :cond_7

    .line 498
    const-string v1, "\t.font weight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v4

    const/16 v5, 0x190

    if-ne v4, v5, :cond_5

    const-string v4, "(Normal)"

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_6

    const-string v4, "(Bold)"

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 508
    :cond_7
    const-string v1, "\t.font weight = ]not modified]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :goto_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isEscapementTypeModified()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 513
    const-string v1, "\t.escapement type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getEscapementType()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 517
    :cond_8
    const-string v1, "\t.escapement type is not modified\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :goto_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isUnderlineTypeModified()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 522
    const-string v1, "\t.underline type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getUnderlineType()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 526
    :cond_9
    const-string v1, "\t.underline type is not modified\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :goto_8
    const-string v1, "\t.color index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontColorIndex()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    const-string v1, "    [/Font Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
