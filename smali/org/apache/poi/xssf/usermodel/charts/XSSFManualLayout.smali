.class public final Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;
.super Ljava/lang/Object;
.source "XSSFManualLayout.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ManualLayout;


# static fields
.field private static final defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

.field private static final defaultLayoutTarget:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;


# instance fields
.field private layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutMode;->EDGE:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 47
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;->INNER:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutTarget:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V
    .locals 2
    .param p1, "chart"    # Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    .line 63
    .local v0, "ctPlotArea":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->isSetLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object v1

    .line 66
    .local v1, "ctLayout":Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->initLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V
    .locals 0
    .param p1, "ctLayout"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->initLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    .line 55
    return-void
.end method

.method private fromLayoutMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;
    .locals 2
    .param p1, "mode"    # Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 213
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$LayoutMode:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/charts/LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 215
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode;->FACTOR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 214
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode;->EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    return-object v0
.end method

.method private fromLayoutTarget(Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;
    .locals 2
    .param p1, "target"    # Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    .line 231
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$LayoutTarget:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->OUTER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 232
    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget;->INNER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    return-object v0
.end method

.method private initLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V
    .locals 1
    .param p1, "ctLayout"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    .line 205
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetManualLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->getManualLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->addNewManualLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    .line 210
    :goto_0
    return-void
.end method

.method private toLayoutMode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;)Lorg/apache/poi/ss/usermodel/charts/LayoutMode;
    .locals 2
    .param p1, "ctLayoutMode"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    .line 222
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutMode;->FACTOR:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutMode;->EDGE:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0
.end method

.method private toLayoutTarget(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;)Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;
    .locals 2
    .param p1, "ctLayoutTarget"    # Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    .line 240
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;->OUTER:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    return-object v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 241
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;->INNER:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    return-object v0
.end method


# virtual methods
.method public getCTManualLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    return-object v0
.end method

.method public getHeightMode()Lorg/apache/poi/ss/usermodel/charts/LayoutMode;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetHMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->toLayoutMode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;)Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    move-result-object v0

    return-object v0
.end method

.method public getHeightRatio()D
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-wide/16 v0, 0x0

    return-wide v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTarget()Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetLayoutTarget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutTarget:Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->toLayoutTarget(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;)Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    move-result-object v0

    return-object v0
.end method

.method public getWidthMode()Lorg/apache/poi/ss/usermodel/charts/LayoutMode;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetWMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->toLayoutMode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;)Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    move-result-object v0

    return-object v0
.end method

.method public getWidthRatio()D
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-wide/16 v0, 0x0

    return-wide v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    return-wide v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getXMode()Lorg/apache/poi/ss/usermodel/charts/LayoutMode;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->toLayoutMode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;)Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    move-result-object v0

    return-object v0
.end method

.method public getY()D
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-wide/16 v0, 0x0

    return-wide v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getYMode()Lorg/apache/poi/ss/usermodel/charts/LayoutMode;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetYMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->defaultLayoutMode:Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->toLayoutMode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;)Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    move-result-object v0

    return-object v0
.end method

.method public setHeightMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)V
    .locals 2
    .param p1, "mode"    # Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 198
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetHMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->fromLayoutMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    .line 202
    return-void
.end method

.method public setHeightRatio(D)V
    .locals 1
    .param p1, "ratio"    # D

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 97
    return-void
.end method

.method public setTarget(Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetLayoutTarget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->fromLayoutTarget(Lorg/apache/poi/ss/usermodel/charts/LayoutTarget;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;)V

    .line 118
    return-void
.end method

.method public setWidthMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)V
    .locals 2
    .param p1, "mode"    # Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 184
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetWMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->fromLayoutMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    .line 188
    return-void
.end method

.method public setWidthRatio(D)V
    .locals 1
    .param p1, "ratio"    # D

    .line 79
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 83
    return-void
.end method

.method public setX(D)V
    .locals 1
    .param p1, "x"    # D

    .line 156
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 160
    return-void
.end method

.method public setXMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)V
    .locals 2
    .param p1, "mode"    # Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->fromLayoutMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    .line 132
    return-void
.end method

.method public setY(D)V
    .locals 1
    .param p1, "y"    # D

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    .line 174
    return-void
.end method

.method public setYMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)V
    .locals 2
    .param p1, "mode"    # Lorg/apache/poi/ss/usermodel/charts/LayoutMode;

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetYMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFManualLayout;->fromLayoutMode(Lorg/apache/poi/ss/usermodel/charts/LayoutMode;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    .line 146
    return-void
.end method
