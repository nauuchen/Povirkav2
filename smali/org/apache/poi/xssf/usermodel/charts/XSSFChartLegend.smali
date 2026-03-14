.class public final Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;
.super Ljava/lang/Object;
.source "XSSFChartLegend.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartLegend;


# instance fields
.field private legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V
    .locals 2
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    .line 48
    .local v0, "ctChart":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->setDefaults()V

    .line 53
    return-void
.end method

.method private fromLegendPosition(Lorg/apache/poi/ss/usermodel/charts/LegendPosition;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;
    .locals 2
    .param p1, "position"    # Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 109
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$LegendPosition:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 114
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos;->TR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 113
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos;->T:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    return-object v0

    .line 112
    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos;->R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    return-object v0

    .line 111
    :cond_3
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos;->L:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    return-object v0

    .line 110
    :cond_4
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos;->B:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    return-object v0
.end method

.method private setDefaults()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 63
    return-void
.end method

.method private toLegendPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;)Lorg/apache/poi/ss/usermodel/charts/LegendPosition;
    .locals 2
    .param p1, "ctLegendPos"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    .line 121
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0

    .line 123
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->LEFT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0

    .line 126
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP_RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0

    .line 122
    :cond_4
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0
.end method


# virtual methods
.method public getCTLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    return-object v0
.end method

.method public bridge synthetic getManualLayout()Lorg/apache/poi/ss/usermodel/charts/ManualLayout;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->getManualLayout()Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;

    move-result-object v0

    return-object v0
.end method

.method public getManualLayout()Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    .line 97
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-object v0
.end method

.method public getPosition()Lorg/apache/poi/ss/usermodel/charts/LegendPosition;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLegendPos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->toLegendPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;)Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0
.end method

.method public isOverlay()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result v0

    return v0
.end method

.method public setOverlay(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 106
    return-void
.end method

.method public setPosition(Lorg/apache/poi/ss/usermodel/charts/LegendPosition;)V
    .locals 2
    .param p1, "position"    # Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLegendPos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;->fromLegendPosition(Lorg/apache/poi/ss/usermodel/charts/LegendPosition;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;)V

    .line 80
    return-void
.end method
