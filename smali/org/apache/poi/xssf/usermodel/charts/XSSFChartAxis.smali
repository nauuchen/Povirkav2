.class public abstract Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.super Ljava/lang/Object;
.source "XSSFChartAxis.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartAxis;


# static fields
.field private static final MAX_LOG_BASE:D = 1000.0

.field private static final MIN_LOG_BASE:D = 2.0


# instance fields
.field protected chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 58
    return-void
.end method

.method private static fromAxisCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;
    .locals 2
    .param p0, "crosses"    # Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    .line 244
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrosses:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 247
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 246
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MIN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    return-object v0

    .line 245
    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->AUTO_ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    return-object v0
.end method

.method private static fromAxisOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;
    .locals 2
    .param p0, "orientation"    # Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    .line 226
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisOrientation:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 228
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation;->MAX_MIN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 227
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation;->MIN_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    return-object v0
.end method

.method private static fromAxisPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;
    .locals 2
    .param p0, "position"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 264
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 268
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->T:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 267
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    return-object v0

    .line 266
    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->L:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    return-object v0

    .line 265
    :cond_3
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->B:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    return-object v0
.end method

.method private static fromAxisTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;
    .locals 3
    .param p0, "tickMark"    # Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 285
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 289
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark;->CROSS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AxisTickMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark;->OUT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    return-object v0

    .line 287
    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark;->IN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    return-object v0

    .line 286
    :cond_3
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    return-object v0
.end method

.method private static toAxisCrosses(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;)Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;
    .locals 2
    .param p0, "ctCrosses"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    .line 254
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 257
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->MIN:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 256
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->MAX:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    return-object v0

    .line 255
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    return-object v0
.end method

.method private static toAxisOrientation(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;)Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;
    .locals 2
    .param p0, "ctOrientation"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    .line 235
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 237
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MAX_MIN:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    return-object v0
.end method

.method private static toAxisPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;)Lorg/apache/poi/ss/usermodel/charts/AxisPosition;
    .locals 2
    .param p0, "ctAxPos"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    .line 275
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 280
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    return-object v0

    .line 279
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->TOP:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    return-object v0

    .line 278
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    return-object v0

    .line 277
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->LEFT:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    return-object v0

    .line 276
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    return-object v0
.end method

.method private static toAxisTickMark(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;)Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
    .locals 2
    .param p0, "ctTickMark"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 296
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 301
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->OUT:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0

    .line 297
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0

    .line 298
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->IN:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0

    .line 300
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0
.end method


# virtual methods
.method protected abstract getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
.end method

.method protected abstract getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
.end method

.method protected abstract getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method protected abstract getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
.end method

.method public getCrosses()Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->toAxisCrosses(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;)Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getLine()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public getLogBase()D
    .locals 3

    .line 102
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object v0

    .line 103
    .local v0, "logBase":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->getVal()D

    move-result-wide v1

    return-wide v1

    .line 106
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method protected abstract getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public abstract getMajorGridLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public getMajorTickMark()Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->toAxisTickMark(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;)Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getMaximum()D
    .locals 3

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 152
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v1

    return-wide v1

    .line 155
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getMinimum()D
    .locals 3

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 127
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v1

    return-wide v1

    .line 130
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method protected abstract getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public getMinorTickMark()Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->toAxisTickMark(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;)Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->toAxisOrientation(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;)Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/apache/poi/ss/usermodel/charts/AxisPosition;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->toAxisPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;)Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    move-result-object v0

    return-object v0
.end method

.method public isSetLogBase()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetLogBase()Z

    move-result v0

    return v0
.end method

.method public isSetMaximum()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result v0

    return v0
.end method

.method public isSetMinimum()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)V
    .locals 2
    .param p1, "crosses"    # Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    .line 182
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->fromAxisCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V

    .line 183
    return-void
.end method

.method public setLogBase(D)V
    .locals 3
    .param p1, "logBase"    # D

    .line 88
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, v0, p1

    if-ltz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 93
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetLogBase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->setVal(D)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->setVal(D)V

    .line 98
    :goto_0
    return-void

    .line 90
    .end local v0    # "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Axis log base must be between 2 and 1000 (inclusive), got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMajorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V
    .locals 2
    .param p1, "tickMark"    # Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 202
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->fromAxisTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)V

    .line 203
    return-void
.end method

.method public setMaximum(D)V
    .locals 2
    .param p1, "max"    # D

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 142
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 147
    :goto_0
    return-void
.end method

.method public setMinimum(D)V
    .locals 2
    .param p1, "min"    # D

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 117
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 122
    :goto_0
    return-void
.end method

.method public setMinorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V
    .locals 2
    .param p1, "tickMark"    # Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 212
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->fromAxisTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)V

    .line 213
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->setFormatCode(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->setSourceLinked(Z)V

    .line 74
    return-void
.end method

.method public setOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)V
    .locals 3
    .param p1, "orientation"    # Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    .line 166
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    .line 167
    .local v0, "scaling":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->fromAxisOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    move-result-object v1

    .line 168
    .local v1, "stOrientation":Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;)V

    .line 173
    :goto_0
    return-void
.end method

.method public setPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 2
    .param p1, "position"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->fromAxisPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;)V

    .line 68
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 192
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 193
    return-void
.end method
