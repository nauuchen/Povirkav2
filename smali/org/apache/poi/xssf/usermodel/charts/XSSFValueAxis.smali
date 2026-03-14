.class public Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;
.super Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.source "XSSFValueAxis.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ValueAxis;


# instance fields
.field private ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "id"    # J
    .param p4, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "ctValAx"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 59
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    .line 60
    return-void
.end method

.method private createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 133
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    .line 134
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 135
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    .line 136
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    .line 137
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    .line 138
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NEXT_TO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)V

    .line 141
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 143
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 145
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 146
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)V

    .line 147
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;->MIDPOINT_CATEGORY:Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setCrossBetween(Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;)V

    .line 148
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setVisible(Z)V

    .line 150
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setMajorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 151
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->setMinorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 152
    return-void
.end method

.method private static fromCrossBetween(Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;
    .locals 2
    .param p0, "crossBetween"    # Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    .line 155
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrossBetween:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 157
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween;->MID_CAT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 156
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween;->BETWEEN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    return-object v0
.end method

.method private static toCrossBetween(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;)Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;
    .locals 2
    .param p0, "ctCrossBetween"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    .line 164
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;->MIDPOINT_CATEGORY:Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;->BETWEEN:Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    return-object v0
.end method


# virtual methods
.method public crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 3
    .param p1, "axis"    # Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 130
    return-void
.end method

.method protected getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    return-object v0
.end method

.method protected getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    return-object v0
.end method

.method protected getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0
.end method

.method protected getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    return-object v0
.end method

.method public getCrossBetween()Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->toCrossBetween(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;)Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    move-result-object v0

    return-object v0
.end method

.method protected getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLine()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method protected getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getMajorGridLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    return-object v0
.end method

.method protected getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public hasNumberFormat()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetNumFmt()Z

    move-result v0

    return v0
.end method

.method public setCrossBetween(Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;)V
    .locals 2
    .param p1, "crossBetween"    # Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->fromCrossBetween(Lorg/apache/poi/ss/usermodel/charts/AxisCrossBetween;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;)V

    .line 76
    return-void
.end method
