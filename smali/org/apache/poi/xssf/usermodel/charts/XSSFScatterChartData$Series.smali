.class Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;
.super Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;
.source "XSSFScatterChartData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ScatterChartSeries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Series"
.end annotation


# instance fields
.field private id:I

.field private order:I

.field private xs:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation
.end field

.field private ys:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
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

    .line 66
    .local p3, "xs":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    .local p4, "ys":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<+Ljava/lang/Number;>;"
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;-><init>()V

    .line 67
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->id:I

    .line 68
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->order:I

    .line 69
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->xs:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    .line 70
    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->ys:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    .line 71
    return-void
.end method


# virtual methods
.method protected addToChart(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;)V
    .locals 4
    .param p1, "ctScatterChart"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    .line 90
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    move-result-object v0

    .line 91
    .local v0, "scatterSer":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->id:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 92
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->order:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 94
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v1

    .line 95
    .local v1, "xVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->xs:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v1, v2}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildAxDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 97
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v2

    .line 98
    .local v2, "yVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->ys:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v2, v3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->isTitleSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->getCTSerTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->setTx(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;)V

    .line 103
    :cond_0
    return-void
.end method

.method public getXValues()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->xs:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method

.method public getYValues()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
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

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFScatterChartData$Series;->ys:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method
