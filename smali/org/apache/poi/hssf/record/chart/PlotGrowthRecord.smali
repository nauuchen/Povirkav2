.class public final Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PlotGrowthRecord.java"


# static fields
.field public static final sid:S = 0x1064s


# instance fields
.field private field_1_horizontalScale:I

.field private field_2_verticalScale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 79
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>()V

    .line 81
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 82
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 83
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 70
    const/16 v0, 0x8

    return v0
.end method

.method public getHorizontalScale()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 75
    const/16 v0, 0x1064

    return v0
.end method

.method public getVerticalScale()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 66
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 67
    return-void
.end method

.method public setHorizontalScale(I)V
    .locals 0
    .param p1, "field_1_horizontalScale"    # I

    .line 102
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 103
    return-void
.end method

.method public setVerticalScale(I)V
    .locals 0
    .param p1, "field_2_verticalScale"    # I

    .line 118
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PLOTGROWTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "    .horizontalScale      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getHorizontalScale()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getHorizontalScale()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v5, "    .verticalScale        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getVerticalScale()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getVerticalScale()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "[/PLOTGROWTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
