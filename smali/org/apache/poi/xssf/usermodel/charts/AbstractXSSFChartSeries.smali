.class public abstract Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;
.super Ljava/lang/Object;
.source "AbstractXSSFChartSeries.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartSeries;


# instance fields
.field private titleRef:Lorg/apache/poi/ss/util/CellReference;

.field private titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

.field private titleValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method protected getCTSerTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 4

    .line 67
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v0

    .line 68
    .local v0, "tx":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$TitleType:[I

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/charts/TitleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->setV(Ljava/lang/String;)V

    .line 74
    return-object v0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown title type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public getTitleCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    .line 45
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/charts/TitleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Title type is not CellReference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/charts/TitleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Title type is not String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleType()Lorg/apache/poi/ss/usermodel/charts/TitleType;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    return-object v0
.end method

.method protected isTitleSet()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 40
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTitle(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "titleReference"    # Lorg/apache/poi/ss/util/CellReference;

    .line 35
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    .line 37
    return-void
.end method
