.class public Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
.super Ljava/lang/Object;
.source "XSSFPatternFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PatternFormatting;


# instance fields
.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field _fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "fill"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 37
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 38
    return-void
.end method

.method private setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 78
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 79
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    :goto_0
    if-nez p1, :cond_1

    .line 80
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetBgColor()V

    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 84
    :goto_1
    return-void
.end method

.method private setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 98
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    :goto_0
    if-nez p1, :cond_1

    .line 99
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetFgColor()V

    goto :goto_1

    .line 101
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 103
    :goto_1
    return-void
.end method


# virtual methods
.method public getFillBackgroundColor()S
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 58
    .local v0, "color":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    return v1
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 41
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 2

    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 63
    .local v0, "color":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 64
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    return v1
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetPatternType()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "bg"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 68
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 69
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 71
    :goto_0
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 3
    .param p1, "bg"    # S

    .line 73
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 74
    .local v0, "bgColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 75
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillBackgroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 76
    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "fg"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 87
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 88
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 90
    :goto_0
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 3
    .param p1, "fg"    # S

    .line 92
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 93
    .local v0, "fgColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 94
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->setFillForegroundColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 95
    return-void
.end method

.method public setFillPattern(S)V
    .locals 2
    .param p1, "fp"    # S

    .line 106
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 107
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetPatternType()V

    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    .line 109
    :goto_1
    return-void
.end method
