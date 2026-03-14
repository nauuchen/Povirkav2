.class public final Lorg/apache/poi/hssf/record/common/ExtendedColor;
.super Ljava/lang/Object;
.source "ExtendedColor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final THEME_ACCENT_1:I = 0x4

.field public static final THEME_ACCENT_2:I = 0x5

.field public static final THEME_ACCENT_3:I = 0x6

.field public static final THEME_ACCENT_4:I = 0x7

.field public static final THEME_ACCENT_5:I = 0x8

.field public static final THEME_ACCENT_6:I = 0x9

.field public static final THEME_DARK_1:I = 0x0

.field public static final THEME_DARK_2:I = 0x2

.field public static final THEME_FOLLOWED_HYPERLINK:I = 0xb

.field public static final THEME_HYPERLINK:I = 0xa

.field public static final THEME_LIGHT_1:I = 0x1

.field public static final THEME_LIGHT_2:I = 0x3

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_INDEXED:I = 0x1

.field public static final TYPE_RGB:I = 0x2

.field public static final TYPE_THEMED:I = 0x3

.field public static final TYPE_UNSET:I = 0x4


# instance fields
.field private colorIndex:I

.field private rgba:[B

.field private themeIndex:I

.field private tint:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 72
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 76
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 78
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 83
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 84
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

    .line 33
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 5

    .line 152
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    .line 153
    .local v0, "exc":Lorg/apache/poi/hssf/record/common/ExtendedColor;
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 154
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 155
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    goto :goto_0

    .line 157
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 158
    const/4 v1, 0x4

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 159
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 161
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    .line 163
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getColorIndex()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    return v0
.end method

.method public getDataLength()I
    .locals 1

    .line 167
    const/16 v0, 0x10

    return v0
.end method

.method public getRGBA()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    return-object v0
.end method

.method public getThemeIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return v0
.end method

.method public getTint()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 171
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 172
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    .line 174
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 177
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 181
    :goto_0
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 182
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .param p1, "colorIndex"    # I

    .line 100
    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    .line 101
    return-void
.end method

.method public setRGBA([B)V
    .locals 1
    .param p1, "rgba"    # [B

    .line 110
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 111
    return-void
.end method

.method public setThemeIndex(I)V
    .locals 0
    .param p1, "themeIndex"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    .line 121
    return-void
.end method

.method public setTint(D)V
    .locals 3
    .param p1, "tint"    # D

    .line 132
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 135
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tint/Shade must be between -1 and +1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 90
    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Extended Color]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "          .type  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "          .tint  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, "          .c_idx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, "          .rgba  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, "          .t_idx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "    [/Extended Color]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
