.class public Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;
.super Ljava/lang/Object;
.source "XSSFLineChartData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/LineChartData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
    }
.end annotation


# instance fields
.field private series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;->series:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public addSeries(Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;"
        }
    .end annotation

    .line 95
    .local p1, "categoryAxisData":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    .local p2, "values":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<+Ljava/lang/Number;>;"
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;->series:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, "numOfSeries":I
    new-instance v1, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;

    invoke-direct {v1, v0, v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;-><init>(IILorg/apache/poi/ss/usermodel/charts/ChartDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 100
    .local v1, "newSeries":Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;->series:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v1

    .line 96
    .end local v0    # "numOfSeries":I
    .end local v1    # "newSeries":Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value data source must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs fillChart(Lorg/apache/poi/ss/usermodel/Chart;[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 10
    .param p1, "chart"    # Lorg/apache/poi/ss/usermodel/Chart;
    .param p2, "axis"    # [Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 109
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v0, :cond_2

    .line 113
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 114
    .local v0, "xssfChart":Lorg/apache/poi/xssf/usermodel/XSSFChart;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    .line 115
    .local v1, "plotArea":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLineChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object v2

    .line 116
    .local v2, "lineChart":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 118
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;->series:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;

    .line 119
    .local v4, "s":Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
    invoke-virtual {v4, v2}, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->addToChart(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;)V

    .end local v4    # "s":Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
    goto :goto_0

    .line 122
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object v3, p2

    .local v3, "arr$":[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 123
    .local v6, "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->getId()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 122
    .end local v6    # "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "arr$":[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return-void

    .line 110
    .end local v0    # "xssfChart":Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .end local v1    # "plotArea":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    .end local v2    # "lineChart":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chart must be instance of XSSFChart"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;->series:Ljava/util/List;

    return-object v0
.end method
