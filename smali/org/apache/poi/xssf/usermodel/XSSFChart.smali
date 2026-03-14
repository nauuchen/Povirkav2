.class public final Lorg/apache/poi/xssf/usermodel/XSSFChart;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFChart.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Chart;
.implements Lorg/apache/poi/ss/usermodel/charts/ChartAxisFactory;


# instance fields
.field axis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;",
            ">;"
        }
    .end annotation
.end field

.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

.field private chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

.field private frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->createChart()V

    .line 95
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument;->getChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    .line 109
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    .line 110
    return-void
.end method

.method private createChart()V
    .locals 7

    .line 117
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    .line 118
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->addNewChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    .line 119
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    .line 121
    .local v0, "plotArea":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    .line 122
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 124
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->addNewPrintSettings()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;

    move-result-object v1

    .line 125
    .local v1, "printSettings":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewHeaderFooter()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHeaderFooter;

    .line 127
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewPageMargins()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;

    move-result-object v2

    .line 128
    .local v2, "pageMargins":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setB(D)V

    .line 129
    const-wide v5, 0x3fe6666666666666L    # 0.7

    invoke-interface {v2, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setL(D)V

    .line 130
    invoke-interface {v2, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setR(D)V

    .line 131
    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setT(D)V

    .line 132
    const-wide v3, 0x3fd3333333333333L    # 0.3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setHeader(D)V

    .line 133
    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setFooter(D)V

    .line 134
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewPageSetup()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageSetup;

    .line 135
    return-void
.end method

.method private hasAxis()Z
    .locals 3

    .line 441
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    .line 442
    .local v0, "ctPlotArea":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDateAxArray()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSerAxArray()I

    move-result v2

    add-int/2addr v1, v2

    .line 447
    .local v1, "totalAxisCount":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private parseAxis()V
    .locals 0

    .line 452
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->parseCategoryAxis()V

    .line 453
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->parseDateAxis()V

    .line 454
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->parseValueAxis()V

    .line 455
    return-void
.end method

.method private parseCategoryAxis()V
    .locals 6

    .line 458
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getCatAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 459
    .local v3, "catAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;

    invoke-direct {v5, p0, v3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v3    # "catAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private parseDateAxis()V
    .locals 6

    .line 464
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getDateAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 465
    .local v3, "dateAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;

    invoke-direct {v5, p0, v3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v3    # "dateAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private parseValueAxis()V
    .locals 6

    .line 470
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 471
    .local v3, "valAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;

    invoke-direct {v5, p0, v3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v3    # "valAx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 168
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chartSpace"

    const-string v4, "c"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 170
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 171
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 172
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 174
    return-void
.end method

.method public bridge synthetic createCategoryAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->createCategoryAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;

    move-result-object v0

    return-object v0
.end method

.method public createCategoryAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;
    .locals 5
    .param p1, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 216
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 217
    .local v2, "id":J
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;

    invoke-direct {v0, p0, v2, v3, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 218
    .local v0, "categoryAxis":Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 220
    .local v1, "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 221
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 223
    .end local v1    # "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v0
.end method

.method public bridge synthetic createDateAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->createDateAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;

    move-result-object v0

    return-object v0
.end method

.method public createDateAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;
    .locals 5
    .param p1, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 228
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 229
    .local v2, "id":J
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;

    invoke-direct {v0, p0, v2, v3, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 230
    .local v0, "dateAxis":Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 232
    .local v1, "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 233
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFDateAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 235
    .end local v1    # "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v0
.end method

.method public bridge synthetic createValueAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/ss/usermodel/charts/ValueAxis;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->createValueAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;

    move-result-object v0

    return-object v0
.end method

.method public createValueAxis(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;
    .locals 5
    .param p1, "pos"    # Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    .line 204
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 205
    .local v2, "id":J
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;

    invoke-direct {v0, p0, v2, v3, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    .line 206
    .local v0, "valueAxis":Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 208
    .local v1, "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 209
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFValueAxis;->crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 211
    .end local v1    # "ax":Lorg/apache/poi/ss/usermodel/charts/ChartAxis;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-object v0
.end method

.method public deleteLegend()V
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetLegend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->unsetLegend()V

    .line 438
    :cond_0
    return-void
.end method

.method public getAxis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->hasAxis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->parseAxis()V

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->axis:Ljava/util/List;

    return-object v0
.end method

.method public getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    return-object v0
.end method

.method public getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    return-object v0
.end method

.method public bridge synthetic getChartAxisFactory()Lorg/apache/poi/ss/usermodel/charts/ChartAxisFactory;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getChartAxisFactory()Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object v0

    return-object v0
.end method

.method public getChartAxisFactory()Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 0

    .line 196
    return-object p0
.end method

.method public bridge synthetic getChartDataFactory()Lorg/apache/poi/ss/usermodel/charts/ChartDataFactory;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getChartDataFactory()Lorg/apache/poi/xssf/usermodel/charts/XSSFChartDataFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChartDataFactory()Lorg/apache/poi/xssf/usermodel/charts/XSSFChartDataFactory;
    .locals 1

    .line 192
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartDataFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/charts/XSSFChartDataFactory;

    move-result-object v0

    return-object v0
.end method

.method public getGraphicFrame()Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    return-object v0
.end method

.method public bridge synthetic getManualLayout()Lorg/apache/poi/ss/usermodel/charts/ManualLayout;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getManualLayout()Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;

    move-result-object v0

    return-object v0
.end method

.method public getManualLayout()Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;
    .locals 1

    .line 247
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    return-object v0
.end method

.method public bridge synthetic getOrCreateLegend()Lorg/apache/poi/ss/usermodel/charts/ChartLegend;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getOrCreateLegend()Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateLegend()Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;
    .locals 1

    .line 431
    new-instance v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartLegend;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    return-object v0
.end method

.method public getTitle()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 275
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getTitleText()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getTitleFormula()Ljava/lang/String;
    .locals 4

    .line 378
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    return-object v1

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .line 384
    .local v0, "title":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    return-object v1

    .line 388
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v2

    .line 390
    .local v2, "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v3

    if-nez v3, :cond_2

    .line 391
    return-object v1

    .line 394
    :cond_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getF()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTitleText()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 9

    .line 288
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .line 295
    .local v0, "title":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v1, "text":Ljava/lang/StringBuffer;
    const-string v2, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:t"

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 298
    .local v2, "t":[Lorg/apache/xmlbeans/XmlObject;
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 299
    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 300
    .local v4, "kids":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 301
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 302
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 303
    .local v7, "kid":Lorg/w3c/dom/Node;
    instance-of v8, v7, Lorg/w3c/dom/Text;

    if-eqz v8, :cond_1

    .line 304
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    .end local v7    # "kid":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 298
    .end local v4    # "kids":Lorg/w3c/dom/NodeList;
    .end local v5    # "count":I
    .end local v6    # "n":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "m":I
    :cond_3
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public isPlotOnlyVisibleCells()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result v0

    return v0
.end method

.method public varargs plot(Lorg/apache/poi/ss/usermodel/charts/ChartData;[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 0
    .param p1, "data"    # Lorg/apache/poi/ss/usermodel/charts/ChartData;
    .param p2, "chartAxis"    # [Lorg/apache/poi/ss/usermodel/charts/ChartAxis;

    .line 200
    invoke-interface {p1, p0, p2}, Lorg/apache/poi/ss/usermodel/charts/ChartData;->fillChart(Lorg/apache/poi/ss/usermodel/Chart;[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V

    .line 201
    return-void
.end method

.method protected setGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;)V
    .locals 0
    .param p1, "frame"    # Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    .line 188
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    .line 189
    return-void
.end method

.method public setPlotOnlyVisibleCells(Z)V
    .locals 1
    .param p1, "plotVisOnly"    # Z

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "newTitle"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 321
    return-void
.end method

.method public setTitleFormula(Ljava/lang/String;)V
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .local v0, "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    goto :goto_0

    .line 406
    .end local v0    # "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .line 410
    .restart local v0    # "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    .local v1, "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    goto :goto_1

    .line 413
    .end local v1    # "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    .line 416
    .restart local v1    # "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetRich()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->unsetRich()V

    .line 421
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v2

    .local v2, "strRef":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
    goto :goto_2

    .line 424
    .end local v2    # "strRef":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v2

    .line 427
    .restart local v2    # "strRef":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
    :goto_2
    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 6
    .param p1, "newTitle"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .local v0, "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    goto :goto_0

    .line 332
    .end local v0    # "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    .line 336
    .restart local v0    # "ctTitle":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    .local v1, "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    goto :goto_1

    .line 339
    .end local v1    # "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    .line 342
    .restart local v1    # "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->unsetStrRef()V

    .line 347
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetRich()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getRich()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v2

    .local v2, "rich":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    goto :goto_2

    .line 350
    .end local v2    # "rich":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->addNewRich()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v2

    .line 351
    .restart local v2    # "rich":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    .line 355
    :goto_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 356
    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    .local v3, "para":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    goto :goto_3

    .line 358
    .end local v3    # "para":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    :cond_4
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    .line 361
    .restart local v3    # "para":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    :goto_3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v5

    if-lez v5, :cond_5

    .line 362
    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getRArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v4

    .line 363
    .local v4, "run":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 364
    .end local v4    # "run":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    goto :goto_4

    :cond_5
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v5

    if-lez v5, :cond_6

    .line 365
    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getFldArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    move-result-object v4

    .line 366
    .local v4, "fld":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    .line 367
    .end local v4    # "fld":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    goto :goto_4

    .line 368
    :cond_6
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v4

    .line 369
    .local v4, "run":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 371
    .end local v4    # "run":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    :goto_4
    return-void
.end method
