.class Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
.super Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;
.source "XSSFLineChartData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Series"
.end annotation


# instance fields
.field private categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation
.end field

.field private id:I

.field private order:I

.field private values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IILorg/apache/poi/ss/usermodel/charts/ChartDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p3, "categories":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    .local p4, "values":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<+Ljava/lang/Number;>;"
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->id:I

    .line 62
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->order:I

    .line 63
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    .line 64
    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    .line 65
    return-void
.end method


# virtual methods
.method protected addToChart(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;)V
    .locals 4
    .param p1, "ctLineChart"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    .line 76
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    move-result-object v0

    .line 77
    .local v0, "ctLineSer":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->id:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 78
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->order:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 81
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    .line 83
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v1

    .line 84
    .local v1, "catDS":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v1, v2}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildAxDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 85
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v2

    .line 86
    .local v2, "valueDS":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v2, v3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->isTitleSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->getCTSerTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->setTx(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;)V

    .line 91
    :cond_0
    return-void
.end method

.method public getCategoryAxisData()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method

.method public getValues()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method
