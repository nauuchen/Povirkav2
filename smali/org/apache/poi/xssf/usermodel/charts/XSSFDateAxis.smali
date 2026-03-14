.class public Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;
.super Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.source "XSSFDateAxis.java"


# instance fields
.field private ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "id"    # J
    .param p4, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 49
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "ctDateAx"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 54
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    .line 55
    return-void
.end method

.method private createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 118
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewDateAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    .line 119
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 120
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    .line 122
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NEXT_TO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)V

    .line 125
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 129
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 130
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)V

    .line 131
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setVisible(Z)V

    .line 133
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setMajorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 134
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->setMinorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 135
    return-void
.end method


# virtual methods
.method public crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 3
    .param p1, "axis"    # Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 115
    return-void
.end method

.method protected getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    return-object v0
.end method

.method protected getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    return-object v0
.end method

.method protected getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0
.end method

.method protected getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    return-object v0
.end method

.method protected getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLine()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method protected getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getMajorGridLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    return-object v0
.end method

.method protected getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public hasNumberFormat()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->ctDateAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->isSetNumFmt()Z

    move-result v0

    return v0
.end method
