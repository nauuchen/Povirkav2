.class public Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
.super Ljava/lang/Object;
.source "XSSFFontFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FontFormatting;


# instance fields
.field private _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "font"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 41
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 42
    return-void
.end method


# virtual methods
.method public getEscapementType()S
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    .line 57
    .local v0, "prop":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    return v1
.end method

.method public bridge synthetic getFontColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->getFontColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFontColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public getFontColorIndex()S
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    .line 97
    .local v1, "color":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v2

    long-to-int v0, v2

    .line 98
    :cond_1
    int-to-short v2, v0

    return v2
.end method

.method public getFontHeight()I
    .locals 5

    .line 136
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    .line 139
    .local v0, "sz":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v1, v3

    int-to-short v1, v1

    return v1
.end method

.method public getUnderlineType()S
    .locals 4

    .line 168
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    .line 170
    .local v0, "u":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 175
    return v1

    .line 174
    :cond_1
    const/16 v1, 0x22

    return v1

    .line 173
    :cond_2
    const/16 v1, 0x21

    return v1

    .line 172
    :cond_3
    return v3

    .line 171
    :cond_4
    return v3
.end method

.method public isBold()Z
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isItalic()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isStruckout()Z
    .locals 5

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "bProp":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v4

    return v4

    .line 85
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "bProp":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetFontStyle()V
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 238
    return-void
.end method

.method public setEscapementType(S)V
    .locals 2
    .param p1, "escapementType"    # S

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setVertAlignArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setFontColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 4
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 121
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 122
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 127
    :goto_0
    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 3
    .param p1, "color"    # S

    .line 106
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 107
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 110
    :cond_0
    return-void
.end method

.method public setFontHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setSzArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;)V

    .line 150
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    .line 153
    :cond_0
    return-void
.end method

.method public setFontStyle(ZZ)V
    .locals 2
    .param p1, "italic"    # Z
    .param p2, "bold"    # Z

    .line 226
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setIArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    .line 227
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    .line 228
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 230
    :cond_1
    return-void
.end method

.method public setUnderlineType(S)V
    .locals 3
    .param p1, "underlineType"    # S

    .line 192
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setUArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;)V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v0

    .line 195
    .local v0, "fenum":Lorg/apache/poi/ss/usermodel/FontUnderline;
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v1

    .line 196
    .local v1, "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;->_font:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    .line 198
    .end local v0    # "fenum":Lorg/apache/poi/ss/usermodel/FontUnderline;
    .end local v1    # "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    :cond_0
    return-void
.end method
