.class public Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
.super Ljava/lang/Object;
.source "XSSFColorScaleFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;


# instance fields
.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "scale"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    .line 38
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 39
    return-void
.end method


# virtual methods
.method public createColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 92
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getColors()[Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->getColors()[Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 6

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->getColorArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 57
    .local v0, "ctcols":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 58
    .local v1, "c":[Lorg/apache/poi/xssf/usermodel/XSSFColor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 59
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    aput-object v3, v1, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getNumControlPoints()I
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getThresholds()[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 5

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->getCfvoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v0

    .line 73
    .local v0, "cfvos":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    .line 75
    .local v1, "t":[Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 76
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    aput-object v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public setColors([Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 3
    .param p1, "colors"    # [Lorg/apache/poi/ss/usermodel/Color;

    .line 64
    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 65
    .local v0, "ctcols":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 66
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 69
    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 2
    .param p1, "num"    # I

    .line 45
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->removeCfvo(I)V

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfColorArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->removeColor(I)V

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    .line 51
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 3
    .param p1, "thresholds"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;

    .line 81
    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    .line 82
    .local v0, "cfvos":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 83
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->getCTCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;->_scale:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->setCfvoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    .line 86
    return-void
.end method
