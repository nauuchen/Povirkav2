.class public final Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FontBasisRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1060s


# instance fields
.field private field_1_xBasis:S

.field private field_2_yBasis:S

.field private field_3_heightBasis:S

.field private field_4_scale:S

.field private field_5_indexToFontTable:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 49
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

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->clone()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
    .locals 2

    .line 100
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>()V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 103
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 104
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 105
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 106
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 107
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 90
    const/16 v0, 0xa

    return v0
.end method

.method public getHeightBasis()S
    .locals 1

    .line 150
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    return v0
.end method

.method public getIndexToFontTable()S
    .locals 1

    .line 182
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return v0
.end method

.method public getScale()S
    .locals 1

    .line 166
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 95
    const/16 v0, 0x1060

    return v0
.end method

.method public getXBasis()S
    .locals 1

    .line 118
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    return v0
.end method

.method public getYBasis()S
    .locals 1

    .line 134
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    return-void
.end method

.method public setHeightBasis(S)V
    .locals 0
    .param p1, "field_3_heightBasis"    # S

    .line 158
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 159
    return-void
.end method

.method public setIndexToFontTable(S)V
    .locals 0
    .param p1, "field_5_indexToFontTable"    # S

    .line 190
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 191
    return-void
.end method

.method public setScale(S)V
    .locals 0
    .param p1, "field_4_scale"    # S

    .line 174
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 175
    return-void
.end method

.method public setXBasis(S)V
    .locals 0
    .param p1, "field_1_xBasis"    # S

    .line 126
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 127
    return-void
.end method

.method public setYBasis(S)V
    .locals 0
    .param p1, "field_2_yBasis"    # S

    .line 142
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FBI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "    .xBasis               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getXBasis()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getXBasis()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v5, "    .yBasis               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getYBasis()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getYBasis()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v5, "    .heightBasis          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getHeightBasis()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getHeightBasis()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v5, "    .scale                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getScale()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getScale()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v5, "    .indexToFontTable     = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getIndexToFontTable()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getIndexToFontTable()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/FBI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
