.class Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;
.super Ljava/lang/Object;
.source "XSSFChartUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAxDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 1
    .param p0, "ctAxDataSource"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 40
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildStrRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->addNewStrLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildStrLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 53
    :goto_0
    return-void
.end method

.method public static buildNumDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 1
    .param p0, "ctNumDataSource"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 67
    :goto_0
    return-void
.end method

.method private static buildNumLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 0
    .param p0, "ctNumData"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 76
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->fillNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 77
    return-void
.end method

.method private static buildNumRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 1
    .param p0, "ctNumRef"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 70
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getFormulaString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->setF(Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->addNewNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v0

    .line 72
    .local v0, "cache":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->fillNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 73
    return-void
.end method

.method private static buildStrLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 0
    .param p0, "ctStrData"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 86
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->fillStringCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 87
    return-void
.end method

.method private static buildStrRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 1
    .param p0, "ctStrRef"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 80
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getFormulaString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    .line 81
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->addNewStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v0

    .line 82
    .local v0, "cache":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->fillStringCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    .line 83
    return-void
.end method

.method private static fillNumCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 6
    .param p0, "cache"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 104
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getPointCount()I

    move-result v0

    .line 105
    .local v0, "numOfPoints":I
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 108
    .local v2, "value":Ljava/lang/Number;
    if-eqz v2, :cond_0

    .line 109
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    move-result-object v3

    .line 110
    .local v3, "ctNumVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->setIdx(J)V

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->setV(Ljava/lang/String;)V

    .line 106
    .end local v2    # "value":Ljava/lang/Number;
    .end local v3    # "ctNumVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static fillStringCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 6
    .param p0, "cache"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;)V"
        }
    .end annotation

    .line 90
    .local p1, "dataSource":Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;, "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<*>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getPointCount()I

    move-result v0

    .line 91
    .local v0, "numOfPoints":I
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object v3

    .line 96
    .local v3, "ctStrVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;
    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setIdx(J)V

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setV(Ljava/lang/String;)V

    .line 92
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ctStrVal":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
