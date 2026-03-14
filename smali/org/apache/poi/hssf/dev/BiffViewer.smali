.class public final Lorg/apache/poi/hssf/dev/BiffViewer;
.super Ljava/lang/Object;
.source "BiffViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;,
        Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;,
        Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;,
        Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;,
        Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    }
.end annotation


# static fields
.field private static final COLUMN_SEPARATOR:[C

.field private static final DUMP_LINE_LEN:I = 0x10

.field private static final NEW_LINE_CHARS:[C

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    .line 60
    const-class v0, Lorg/apache/poi/hssf/dev/BiffViewer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->logger:Lorg/apache/poi/util/POILogger;

    .line 601
    const-string v0, " | "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    return-object v0
.end method

.method private static arraycopy([C[CI)I
    .locals 6
    .param p0, "in"    # [C
    .param p1, "out"    # [C
    .param p2, "pos"    # I

    .line 703
    move v0, p2

    .line 704
    .local v0, "idx":I
    move-object v1, p0

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    .line 705
    .local v4, "c":C
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "idx":I
    .local v5, "idx":I
    aput-char v4, p1, v0

    .line 704
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 707
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v5    # "idx":I
    .restart local v0    # "idx":I
    :cond_0
    return v0
.end method

.method private static createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 127
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 290
    new-instance v0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 271
    :pswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 145
    :pswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 263
    :pswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 196
    :pswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 194
    :pswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 266
    :pswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 195
    :pswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 241
    :pswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 260
    :pswitch_8
    new-instance v0, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 219
    :pswitch_9
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 270
    :pswitch_a
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 185
    :pswitch_b
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 156
    :pswitch_c
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 222
    :pswitch_d
    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 138
    :pswitch_e
    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 228
    :pswitch_f
    new-instance v0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 229
    :pswitch_10
    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 144
    :pswitch_11
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 259
    :pswitch_12
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 237
    :pswitch_13
    new-instance v0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 207
    :pswitch_14
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 242
    :pswitch_15
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 217
    :pswitch_16
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 199
    :pswitch_17
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 265
    :pswitch_18
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 268
    :pswitch_19
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 215
    :pswitch_1a
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 180
    :pswitch_1b
    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 243
    :sswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 226
    :sswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 162
    :sswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 132
    :sswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 187
    :sswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 210
    :sswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 135
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 247
    :sswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 249
    :sswitch_8
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 133
    :sswitch_9
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 225
    :sswitch_a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 177
    :sswitch_b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/EndRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/EndRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 140
    :sswitch_c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 193
    :sswitch_d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 220
    :sswitch_e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 188
    :sswitch_f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 257
    :sswitch_10
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 167
    :sswitch_11
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 131
    :sswitch_12
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 153
    :sswitch_13
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 264
    :sswitch_14
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 258
    :sswitch_15
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 134
    :sswitch_16
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 129
    :sswitch_17
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 139
    :sswitch_18
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 244
    :sswitch_19
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 208
    :sswitch_1a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 154
    :sswitch_1b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 246
    :sswitch_1c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 128
    :sswitch_1d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 209
    :sswitch_1e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 163
    :sswitch_1f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 245
    :sswitch_20
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 155
    :sswitch_21
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 261
    :sswitch_22
    new-instance v0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 216
    :sswitch_23
    new-instance v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 254
    :sswitch_24
    new-instance v0, Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 149
    :sswitch_25
    new-instance v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 147
    :sswitch_26
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 182
    :sswitch_27
    new-instance v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 183
    :sswitch_28
    new-instance v0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 274
    :sswitch_29
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 276
    :sswitch_2a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 279
    :sswitch_2b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 275
    :sswitch_2c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 278
    :sswitch_2d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 277
    :sswitch_2e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 137
    :sswitch_2f
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 248
    :sswitch_30
    new-instance v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 191
    :sswitch_31
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 251
    :sswitch_32
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 233
    :sswitch_33
    new-instance v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 269
    :sswitch_34
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 255
    :sswitch_35
    new-instance v0, Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 168
    :sswitch_36
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 130
    :sswitch_37
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 201
    :sswitch_38
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 238
    :sswitch_39
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 250
    :sswitch_3a
    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 143
    :sswitch_3b
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 205
    :sswitch_3c
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 218
    :sswitch_3d
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 141
    :sswitch_3e
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 170
    :sswitch_3f
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 234
    :sswitch_40
    new-instance v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 174
    :sswitch_41
    new-instance v0, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 224
    :sswitch_42
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 200
    :sswitch_43
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 236
    :sswitch_44
    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 256
    :sswitch_45
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 175
    :sswitch_46
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 148
    :sswitch_47
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 146
    :sswitch_48
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 232
    :sswitch_49
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 252
    :sswitch_4a
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 161
    :sswitch_4b
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 262
    :sswitch_4c
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 253
    :sswitch_4d
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 288
    :sswitch_4e
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 178
    :sswitch_4f
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 206
    :sswitch_50
    new-instance v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 240
    :sswitch_51
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 173
    :sswitch_52
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 172
    :sswitch_53
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 171
    :sswitch_54
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 212
    :sswitch_55
    new-instance v0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 283
    :sswitch_56
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 202
    :sswitch_57
    invoke-static {p0}, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0

    .line 203
    :sswitch_58
    new-instance v0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 179
    :sswitch_59
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 142
    :sswitch_5a
    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 160
    :sswitch_5b
    new-instance v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 282
    :sswitch_5c
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 287
    :sswitch_5d
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 211
    :sswitch_5e
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 213
    :sswitch_5f
    new-instance v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 214
    :sswitch_60
    new-instance v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulRKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 284
    :sswitch_61
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 286
    :sswitch_62
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 285
    :sswitch_63
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 230
    :sswitch_64
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 239
    :sswitch_65
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 221
    :sswitch_66
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 157
    :sswitch_67
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 166
    :sswitch_68
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 165
    :sswitch_69
    new-instance v0, Lorg/apache/poi/hssf/record/DConRefRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 189
    :sswitch_6a
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 184
    :sswitch_6b
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 190
    :sswitch_6c
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 197
    :sswitch_6d
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 223
    :sswitch_6e
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 231
    :sswitch_6f
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 204
    :sswitch_70
    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 169
    :sswitch_71
    new-instance v0, Lorg/apache/poi/hssf/record/DeltaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 235
    :sswitch_72
    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 227
    :sswitch_73
    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 152
    :sswitch_74
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 151
    :sswitch_75
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 176
    :sswitch_76
    new-instance v0, Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/EOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 192
    :sswitch_77
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 186
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 198
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 159
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 267
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 158
    :cond_5
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 181
    :cond_6
    new-instance v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 164
    :cond_7
    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_77
        0xa -> :sswitch_76
        0xc -> :sswitch_75
        0xd -> :sswitch_74
        0xe -> :sswitch_73
        0xf -> :sswitch_72
        0x10 -> :sswitch_71
        0x11 -> :sswitch_70
        0x12 -> :sswitch_6f
        0x13 -> :sswitch_6e
        0x14 -> :sswitch_6d
        0x15 -> :sswitch_6c
        0x2f -> :sswitch_6b
        0x31 -> :sswitch_6a
        0x51 -> :sswitch_69
        0x55 -> :sswitch_68
        0x7d -> :sswitch_67
        0x92 -> :sswitch_66
        0xa0 -> :sswitch_65
        0xa1 -> :sswitch_64
        0xb0 -> :sswitch_63
        0xb1 -> :sswitch_62
        0xb6 -> :sswitch_61
        0xbd -> :sswitch_60
        0xbe -> :sswitch_5f
        0xc1 -> :sswitch_5e
        0xc5 -> :sswitch_5d
        0xd5 -> :sswitch_5c
        0xd7 -> :sswitch_5b
        0xda -> :sswitch_5a
        0xe0 -> :sswitch_59
        0xe1 -> :sswitch_58
        0xe2 -> :sswitch_57
        0xe3 -> :sswitch_56
        0xe5 -> :sswitch_55
        0xeb -> :sswitch_54
        0xec -> :sswitch_53
        0xed -> :sswitch_52
        0xfc -> :sswitch_51
        0xfd -> :sswitch_50
        0xff -> :sswitch_4f
        0x100 -> :sswitch_4e
        0x13d -> :sswitch_4d
        0x160 -> :sswitch_4c
        0x161 -> :sswitch_4b
        0x1ae -> :sswitch_4a
        0x1af -> :sswitch_49
        0x1b0 -> :sswitch_48
        0x1b1 -> :sswitch_47
        0x1b2 -> :sswitch_46
        0x1b6 -> :sswitch_45
        0x1b7 -> :sswitch_44
        0x1b8 -> :sswitch_43
        0x1bc -> :sswitch_42
        0x1be -> :sswitch_41
        0x1c1 -> :sswitch_40
        0x200 -> :sswitch_3f
        0x201 -> :sswitch_3e
        0x203 -> :sswitch_3d
        0x204 -> :sswitch_3c
        0x205 -> :sswitch_3b
        0x207 -> :sswitch_3a
        0x208 -> :sswitch_39
        0x20b -> :sswitch_38
        0x221 -> :sswitch_37
        0x225 -> :sswitch_36
        0x236 -> :sswitch_35
        0x23e -> :sswitch_34
        0x27e -> :sswitch_33
        0x293 -> :sswitch_32
        0x41e -> :sswitch_31
        0x4bc -> :sswitch_30
        0x809 -> :sswitch_2f
        0x850 -> :sswitch_2e
        0x852 -> :sswitch_2d
        0x853 -> :sswitch_2c
        0x854 -> :sswitch_2b
        0x855 -> :sswitch_2a
        0x856 -> :sswitch_29
        0x867 -> :sswitch_28
        0x868 -> :sswitch_27
        0x879 -> :sswitch_26
        0x87a -> :sswitch_25
        0x88e -> :sswitch_24
        0x894 -> :sswitch_23
        0x1001 -> :sswitch_22
        0x1002 -> :sswitch_21
        0x1003 -> :sswitch_20
        0x1006 -> :sswitch_1f
        0x1007 -> :sswitch_1e
        0x100a -> :sswitch_1d
        0x100d -> :sswitch_1c
        0x1014 -> :sswitch_1b
        0x1015 -> :sswitch_1a
        0x1016 -> :sswitch_19
        0x1017 -> :sswitch_18
        0x101a -> :sswitch_17
        0x101d -> :sswitch_16
        0x101e -> :sswitch_15
        0x101f -> :sswitch_14
        0x1020 -> :sswitch_13
        0x1021 -> :sswitch_12
        0x1024 -> :sswitch_11
        0x1025 -> :sswitch_10
        0x1026 -> :sswitch_f
        0x1027 -> :sswitch_e
        0x1032 -> :sswitch_d
        0x1033 -> :sswitch_c
        0x1034 -> :sswitch_b
        0x1035 -> :sswitch_a
        0x1041 -> :sswitch_9
        0x1044 -> :sswitch_8
        0x1045 -> :sswitch_7
        0x1046 -> :sswitch_6
        0x1051 -> :sswitch_5
        0x1060 -> :sswitch_4
        0x1062 -> :sswitch_3
        0x1063 -> :sswitch_2
        0x1064 -> :sswitch_1
        0x1065 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createRecords(Ljava/io/InputStream;Ljava/io/PrintWriter;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "recListener"    # Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    .param p3, "dumpInterpretedRecords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 85
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3
    :try_end_0
    .catch Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v3, "hasNext":Z
    goto :goto_1

    .line 86
    .end local v3    # "hasNext":Z
    :catch_0
    move-exception v4

    .line 87
    .restart local v3    # "hasNext":Z
    .local v4, "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    sget-object v5, Lorg/apache/poi/hssf/dev/BiffViewer;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes and continuing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    .line 89
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    .line 91
    .end local v4    # "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    :goto_1
    if-nez v3, :cond_0

    .line 92
    nop

    .line 115
    .end local v3    # "hasNext":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/Record;

    .line 116
    .local v2, "result":[Lorg/apache/poi/hssf/record/Record;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    return-object v2

    .line 94
    .end local v2    # "result":[Lorg/apache/poi/hssf/record/Record;
    .restart local v3    # "hasNext":Z
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 95
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v4

    if-nez v4, :cond_1

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    if-eqz p3, :cond_4

    .line 100
    invoke-static {v1}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    .line 101
    .local v4, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p2}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->getRecentHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    .local v6, "header":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v6    # "header":Ljava/lang/String;
    goto :goto_2

    .line 109
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_3

    .line 111
    .end local v4    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    .line 113
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 114
    .end local v3    # "hasNext":Z
    goto/16 :goto_0
.end method

.method protected static getPOIFSInputStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 2
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "workbookName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    return-object v1
.end method

.method private static getPrintableChar(B)C
    .locals 2
    .param p0, "b"    # B

    .line 711
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    .line 712
    .local v0, "ib":C
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7e

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    return v0

    .line 713
    :cond_1
    :goto_0
    const/16 v1, 0x2e

    return v1
.end method

.method static hexDumpAligned(Ljava/io/Writer;[BIIZ)V
    .locals 18
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "dumpLen"    # I
    .param p3, "globalOffset"    # I
    .param p4, "zeroAlignEachRecord"    # Z

    .line 609
    const/4 v0, 0x0

    .line 612
    .local v0, "baseDataOffset":I
    add-int v1, p3, v0

    .line 613
    .local v1, "globalStart":I
    add-int v2, p3, v0

    add-int v2, v2, p2

    .line 614
    .local v2, "globalEnd":I
    rem-int/lit8 v3, v1, 0x10

    .line 615
    .local v3, "startDelta":I
    rem-int/lit8 v4, v2, 0x10

    .line 616
    .local v4, "endDelta":I
    if-eqz p4, :cond_1

    .line 617
    sub-int/2addr v4, v3

    .line 618
    if-gez v4, :cond_0

    .line 619
    add-int/lit8 v4, v4, 0x10

    .line 621
    :cond_0
    const/4 v3, 0x0

    move v14, v4

    goto :goto_0

    .line 616
    :cond_1
    move v14, v4

    .line 625
    .end local v4    # "endDelta":I
    .local v14, "endDelta":I
    :goto_0
    if-eqz p4, :cond_2

    .line 626
    sub-int v4, v2, v14

    sub-int v5, v1, v3

    sub-int/2addr v4, v5

    .line 627
    .local v4, "endLineAddr":I
    const/4 v5, 0x0

    move v15, v4

    move v4, v5

    .local v5, "startLineAddr":I
    goto :goto_1

    .line 629
    .end local v4    # "endLineAddr":I
    .end local v5    # "startLineAddr":I
    :cond_2
    sub-int v5, v1, v3

    .line 630
    .restart local v5    # "startLineAddr":I
    sub-int v4, v2, v14

    move v15, v4

    move v4, v5

    .line 633
    .end local v5    # "startLineAddr":I
    .local v4, "startLineAddr":I
    .local v15, "endLineAddr":I
    :goto_1
    sub-int v16, v0, v3

    .line 634
    .local v16, "lineDataOffset":I
    move v7, v4

    .line 637
    .local v7, "lineAddr":I
    if-ne v4, v15, :cond_3

    .line 638
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, v16

    move v9, v3

    move v10, v14

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 639
    return-void

    .line 641
    :cond_3
    const/16 v13, 0x10

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v7

    move/from16 v11, v16

    move v12, v3

    invoke-static/range {v8 .. v13}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 645
    :goto_2
    add-int/lit8 v13, v7, 0x10

    .line 646
    .end local v7    # "lineAddr":I
    .local v13, "lineAddr":I
    add-int/lit8 v16, v16, 0x10

    .line 647
    if-lt v13, v15, :cond_5

    .line 648
    nop

    .line 655
    if-eqz v14, :cond_4

    .line 656
    const/4 v8, 0x0

    move/from16 v17, v4

    .end local v4    # "startLineAddr":I
    .local v17, "startLineAddr":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v13

    move/from16 v7, v16

    move v9, v14

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    goto :goto_3

    .line 655
    .end local v17    # "startLineAddr":I
    .restart local v4    # "startLineAddr":I
    :cond_4
    move/from16 v17, v4

    .line 658
    .end local v4    # "startLineAddr":I
    .restart local v17    # "startLineAddr":I
    :goto_3
    return-void

    .line 650
    .end local v17    # "startLineAddr":I
    .restart local v4    # "startLineAddr":I
    :cond_5
    move/from16 v17, v4

    .end local v4    # "startLineAddr":I
    .restart local v17    # "startLineAddr":I
    const/4 v12, 0x0

    const/16 v4, 0x10

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v13

    move/from16 v11, v16

    move v5, v13

    .end local v13    # "lineAddr":I
    .local v5, "lineAddr":I
    move v13, v4

    invoke-static/range {v8 .. v13}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    move v7, v5

    move/from16 v4, v17

    goto :goto_2
.end method

.method private static hexDumpLine(Ljava/io/Writer;[BIIII)V
    .locals 7
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "lineStartAddress"    # I
    .param p3, "lineDataOffset"    # I
    .param p4, "startDelta"    # I
    .param p5, "endDelta"    # I

    .line 661
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    array-length v1, v0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x10

    add-int/2addr v1, v4

    sget-object v5, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    array-length v5, v5

    add-int/2addr v1, v5

    new-array v1, v1, [C

    .line 663
    .local v1, "buf":[C
    if-ge p4, p5, :cond_5

    .line 666
    const/4 v5, 0x0

    .line 668
    .local v5, "idx":I
    :try_start_0
    invoke-static {v1, v5, p2, v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex([CIII)V

    .line 669
    add-int/lit8 v3, v5, 0x8

    invoke-static {v0, v1, v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->arraycopy([C[CI)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 671
    .end local v5    # "idx":I
    .local v0, "idx":I
    const/4 v3, 0x0

    move v5, v0

    .end local v0    # "idx":I
    .local v3, "i":I
    .restart local v5    # "idx":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 672
    const/16 v0, 0x20

    if-lez v3, :cond_0

    .line 673
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .local v6, "idx":I
    :try_start_1
    aput-char v0, v1, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    goto :goto_1

    .line 697
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    move v5, v6

    goto :goto_4

    .line 675
    .end local v6    # "idx":I
    .restart local v3    # "i":I
    .restart local v5    # "idx":I
    :cond_0
    :goto_1
    if-lt v3, p4, :cond_1

    if-ge v3, p5, :cond_1

    .line 676
    add-int v0, p3, v3

    :try_start_2
    aget-byte v0, p1, v0

    invoke-static {v1, v5, v0, v2}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex([CIII)V

    goto :goto_2

    .line 678
    :cond_1
    aput-char v0, v1, v5

    .line 679
    add-int/lit8 v6, v5, 0x1

    aput-char v0, v1, v6

    .line 681
    :goto_2
    add-int/lit8 v5, v5, 0x2

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    .end local v3    # "i":I
    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    invoke-static {v0, v1, v5}, Lorg/apache/poi/hssf/dev/BiffViewer;->arraycopy([C[CI)I

    move-result v0

    .line 686
    .end local v5    # "idx":I
    .restart local v0    # "idx":I
    const/4 v2, 0x0

    move v5, v0

    .end local v0    # "idx":I
    .local v2, "i":I
    .restart local v5    # "idx":I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 687
    const/16 v0, 0x20

    .line 688
    .local v0, "ch":C
    if-lt v2, p4, :cond_3

    if-ge v2, p5, :cond_3

    .line 689
    add-int v3, p3, v2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPrintableChar(B)C

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v3

    .line 691
    :cond_3
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "idx":I
    .local v3, "idx":I
    :try_start_3
    aput-char v0, v1, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 686
    .end local v0    # "ch":C
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_3

    .line 697
    .end local v2    # "i":I
    :catch_1
    move-exception v0

    move v5, v3

    goto :goto_4

    .line 694
    .end local v3    # "idx":I
    .restart local v5    # "idx":I
    :cond_4
    :try_start_4
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    invoke-static {v0, v1, v5}, Lorg/apache/poi/hssf/dev/BiffViewer;->arraycopy([C[CI)I

    move-result v0

    move v5, v0

    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v5}, Ljava/io/Writer;->write([CII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 699
    nop

    .line 700
    return-void

    .line 697
    :catch_2
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 664
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "idx":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad start/end delta"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
        }
    .end annotation

    .line 402
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    move-result-object v0

    .line 405
    .local v0, "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputToFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v2

    .line 408
    .local v1, "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 410
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 413
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :goto_0
    const/4 v2, 0x0

    .line 414
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    const/4 v3, 0x0

    .line 416
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v4

    .line 417
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .local v8, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_1
    invoke-static {v8}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 419
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputRawHexOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 421
    .local v2, "data":[B
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 422
    .end local v2    # "data":[B
    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpRecordInterpretations()Z

    move-result v4

    .line 424
    .local v4, "dumpInterpretedRecords":Z
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpBiffHex()Z

    move-result v5

    .line 425
    .local v5, "dumpHex":Z
    move v6, v4

    .line 426
    .local v6, "zeroAlignHexDump":Z
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->suppressHeader()Z

    move-result v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/hssf/dev/BiffViewer;->runBiffViewer(Ljava/io/PrintWriter;Ljava/io/InputStream;ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    .end local v4    # "dumpInterpretedRecords":Z
    .end local v5    # "dumpHex":Z
    .end local v6    # "zeroAlignHexDump":Z
    :goto_1
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 431
    invoke-static {v8}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    nop

    .line 434
    return-void

    .line 430
    :catchall_0
    move-exception v2

    goto :goto_2

    .end local v8    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catchall_1
    move-exception v4

    move-object v8, v2

    move-object v2, v4

    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v8    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :goto_2
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 431
    invoke-static {v8}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method protected static runBiffViewer(Ljava/io/PrintWriter;Ljava/io/InputStream;ZZZZ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dumpInterpretedRecords"    # Z
    .param p3, "dumpHex"    # Z
    .param p4, "zeroAlignHexDump"    # Z
    .param p5, "suppressHeader"    # Z

    .line 445
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;

    if-eqz p3, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, p4, p5}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;-><init>(Ljava/io/Writer;ZZ)V

    .line 446
    .local v0, "recListener":Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    new-instance v1, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;)V

    move-object p1, v1

    .line 447
    invoke-static {p1, p0, v0, p2}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecords(Ljava/io/InputStream;Ljava/io/PrintWriter;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;

    .line 448
    return-void
.end method

.method private static writeHex([CIII)V
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "startInBuf"    # I
    .param p2, "value"    # I
    .param p3, "nDigits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    move v0, p2

    .line 720
    .local v0, "acc":I
    add-int/lit8 v1, p3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 721
    and-int/lit8 v2, v0, 0xf

    .line 722
    .local v2, "digit":I
    add-int v3, p1, v1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x41

    add-int/lit8 v4, v5, -0xa

    :goto_1
    int-to-char v4, v4

    aput-char v4, p0, v3

    .line 723
    ushr-int/lit8 v0, v0, 0x4

    .line 720
    .end local v2    # "digit":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
