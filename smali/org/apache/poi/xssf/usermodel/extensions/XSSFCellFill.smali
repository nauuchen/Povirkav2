.class public final Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
.super Ljava/lang/Object;
.source "XSSFCellFill.java"


# instance fields
.field private _fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "fill"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 43
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 44
    return-void
.end method

.method private ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 143
    .local v0, "patternFill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    if-nez v0, :cond_0

    .line 144
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    .line 168
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    return-object v0
.end method

.method public getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 60
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    .line 63
    .local v2, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :goto_0
    return-object v1
.end method

.method public getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 94
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 96
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    .line 97
    .local v2, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :goto_0
    return-object v1
.end method

.method public getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 128
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->_fill:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setFillBackgroundColor(I)V
    .locals 4
    .param p1, "index"    # I

    .line 72
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 73
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetBgColor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    .line 74
    .local v1, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 75
    return-void
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 83
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 84
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 85
    return-void
.end method

.method public setFillForegroundColor(I)V
    .locals 4
    .param p1, "index"    # I

    .line 106
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 107
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->addNewFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    .line 108
    .local v1, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 109
    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 117
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 118
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 119
    return-void
.end method

.method public setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V
    .locals 1
    .param p1, "patternType"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 137
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->ensureCTPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    .line 138
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    .line 139
    return-void
.end method
