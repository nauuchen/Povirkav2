.class public final Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DataFormatRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1006s

.field private static final useExcel4Colors:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_pointNumber:S

.field private field_2_seriesIndex:S

.field private field_3_seriesNumber:S

.field private field_4_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 52
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

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->clone()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
    .locals 2

    .line 99
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>()V

    .line 101
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 102
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 103
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 104
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 105
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 89
    const/16 v0, 0x8

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .line 164
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return v0
.end method

.method public getPointNumber()S
    .locals 1

    .line 116
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return v0
.end method

.method public getSeriesIndex()S
    .locals 1

    .line 132
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return v0
.end method

.method public getSeriesNumber()S
    .locals 1

    .line 148
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 94
    const/16 v0, 0x1006

    return v0
.end method

.method public isUseExcel4Colors()Z
    .locals 2

    .line 190
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_4_formatFlags"    # S

    .line 172
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 173
    return-void
.end method

.method public setPointNumber(S)V
    .locals 0
    .param p1, "field_1_pointNumber"    # S

    .line 124
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 125
    return-void
.end method

.method public setSeriesIndex(S)V
    .locals 0
    .param p1, "field_2_seriesIndex"    # S

    .line 140
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 141
    return-void
.end method

.method public setSeriesNumber(S)V
    .locals 0
    .param p1, "field_3_seriesNumber"    # S

    .line 156
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 157
    return-void
.end method

.method public setUseExcel4Colors(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 181
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DATAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "    .pointNumber          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v5, "    .seriesIndex          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v5, "    .seriesNumber         = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v5, "    .formatFlags          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "         .useExcel4Colors          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->isUseExcel4Colors()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/DATAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
