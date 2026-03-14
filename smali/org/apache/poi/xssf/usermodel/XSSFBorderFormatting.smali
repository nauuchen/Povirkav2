.class public Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
.super Ljava/lang/Object;
.source "XSSFBorderFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field _border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "border"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 37
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 38
    return-void
.end method

.method private getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 2
    .param p1, "borderPr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 423
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0

    .line 424
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    .line 425
    .local v0, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3
    .param p1, "pr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 433
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :goto_0
    return-object v0
.end method

.method private getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S
    .locals 1
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 429
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBorderBottom()S
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderDiagonal()S
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderHorizontalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()S
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()S
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderVerticalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getBottomBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getDiagonalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColor()S
    .locals 1

    .line 357
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getHorizontalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeftBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColor()S
    .locals 1

    .line 153
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getRightBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColor()S
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColor()S
    .locals 1

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getVerticalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 175
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetBottom()V

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 177
    :goto_1
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 1
    .param p1, "border"    # S

    .line 170
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 171
    return-void
.end method

.method public setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 188
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 189
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetDiagonal()V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 191
    :goto_1
    return-void
.end method

.method public setBorderDiagonal(S)V
    .locals 1
    .param p1, "border"    # S

    .line 184
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 185
    return-void
.end method

.method public setBorderHorizontal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 365
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 366
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetHorizontal()V

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 368
    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 202
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 203
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetLeft()V

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 205
    :goto_1
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 1
    .param p1, "border"    # S

    .line 198
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 199
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 216
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 217
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetRight()V

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 219
    :goto_1
    return-void
.end method

.method public setBorderRight(S)V
    .locals 1
    .param p1, "border"    # S

    .line 212
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 213
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 230
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 231
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetTop()V

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 233
    :goto_1
    return-void
.end method

.method public setBorderTop(S)V
    .locals 1
    .param p1, "border"    # S

    .line 226
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 227
    return-void
.end method

.method public setBorderVertical(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 371
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 372
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetVertical()V

    goto :goto_1

    .line 373
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 374
    :goto_1
    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 237
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 238
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 240
    :goto_0
    return-void
.end method

.method public setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 248
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 249
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 250
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 252
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 254
    :goto_1
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 243
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 244
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 246
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 258
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 259
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 261
    :goto_0
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 269
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 270
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 271
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 273
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 275
    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 264
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 265
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 266
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 267
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 383
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 384
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 386
    :goto_0
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 389
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 390
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 391
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 393
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 395
    :goto_1
    return-void
.end method

.method public setHorizontalBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 377
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 378
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 379
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 380
    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 279
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 280
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 282
    :goto_0
    return-void
.end method

.method public setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 290
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 291
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 292
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 294
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 296
    :goto_1
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 285
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 286
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 287
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 288
    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 300
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 301
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 303
    :goto_0
    return-void
.end method

.method public setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 311
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 312
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 313
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 315
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 317
    :goto_1
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 306
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 307
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 308
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 309
    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 321
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 322
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 324
    :goto_0
    return-void
.end method

.method public setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 332
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 333
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 334
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 336
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 338
    :goto_1
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 327
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 328
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 329
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 330
    return-void
.end method

.method public setVerticalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 404
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 405
    .local v0, "xcolor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 407
    :goto_0
    return-void
.end method

.method public setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1
    .param p1, "color"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 410
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 411
    .local v0, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-nez p1, :cond_1

    .line 412
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 414
    :cond_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 416
    :goto_1
    return-void
.end method

.method public setVerticalBorderColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 398
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 399
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 400
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 401
    return-void
.end method
