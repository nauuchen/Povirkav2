.class public Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;
.super Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.source "XSSFCategoryAxis.java"


# instance fields
.field private ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "id"    # J
    .param p4, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 51
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V
    .locals 0
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .param p2, "ctCatAx"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    .line 56
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    .line 57
    return-void
.end method

.method private createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 120
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    .line 121
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 122
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    .line 125
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NEXT_TO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)V

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    .line 131
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 132
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)V

    .line 133
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setVisible(Z)V

    .line 135
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setMajorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 136
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->setMinorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    .line 137
    return-void
.end method


# virtual methods
.method public crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 3
    .param p1, "axis"    # Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 117
    return-void
.end method

.method protected getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    return-object v0
.end method

.method protected getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    return-object v0
.end method

.method protected getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0
.end method

.method protected getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    return-object v0
.end method

.method protected getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLine()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method protected getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getMajorGridLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    return-object v0
.end method

.method protected getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public hasNumberFormat()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->isSetNumFmt()Z

    move-result v0

    return v0
.end method
