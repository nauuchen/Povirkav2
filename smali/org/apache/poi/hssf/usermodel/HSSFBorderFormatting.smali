.class public final Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
.super Ljava/lang/Object;
.source "HSSFBorderFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field private final borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "cfRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleBase;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 40
    return-void
.end method


# virtual methods
.method public getBorderBottom()S
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderDiagonal()S
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderDiagonal()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderDiagonal()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getBorderFormattingBlock()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-object v0
.end method

.method public getBorderHorizontalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 382
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()S
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()S
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderVerticalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 374
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBottomBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBottomBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDiagonalBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getDiagonalBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDiagonalBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDiagonalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColor()S
    .locals 1

    .line 406
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    return v0
.end method

.method public getHorizontalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 414
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getLeftBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColor()S
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRightBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRightBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColor()S
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getTopBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColor()S
    .locals 1

    .line 390
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    return v0
.end method

.method public getVerticalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 398
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isBackwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public isForwardDiagonalOn()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isForwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBackwardDiagonalOn(Z)V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 212
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderBottom(S)V

    .line 213
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2
    .param p1, "border"    # S

    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderBottom(I)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    .line 209
    :goto_0
    return-void
.end method

.method public setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 228
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderDiagonal(S)V

    .line 229
    return-void
.end method

.method public setBorderDiagonal(S)V
    .locals 2
    .param p1, "border"    # S

    .line 217
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderDiagonal(I)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    .line 225
    :goto_0
    return-void
.end method

.method public setBorderHorizontal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 423
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 242
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderLeft(S)V

    .line 243
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2
    .param p1, "border"    # S

    .line 233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderLeft(I)V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    .line 239
    :goto_0
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 256
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderRight(S)V

    .line 257
    return-void
.end method

.method public setBorderRight(S)V
    .locals 2
    .param p1, "border"    # S

    .line 247
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderRight(I)V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    .line 253
    :goto_0
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 270
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderTop(S)V

    .line 271
    return-void
.end method

.method public setBorderTop(S)V
    .locals 2
    .param p1, "border"    # S

    .line 261
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderTop(I)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    .line 267
    :goto_0
    return-void
.end method

.method public setBorderVertical(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 431
    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 283
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 284
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBottomBorderColor(S)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBottomBorderColor(S)V

    .line 289
    :goto_0
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 275
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBottomBorderColor(I)V

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    .line 281
    :goto_0
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 304
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 305
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setDiagonalBorderColor(S)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setDiagonalBorderColor(S)V

    .line 310
    :goto_0
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setDiagonalBorderColor(I)V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    .line 296
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    .line 299
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    .line 301
    :goto_0
    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 195
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setForwardDiagonalOn(Z)V

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 447
    return-void
.end method

.method public setHorizontalBorderColor(S)V
    .locals 0
    .param p1, "color"    # S

    .line 439
    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 323
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 324
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setLeftBorderColor(S)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setLeftBorderColor(S)V

    .line 329
    :goto_0
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 314
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setLeftBorderColor(I)V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    .line 320
    :goto_0
    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 342
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 343
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 344
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setRightBorderColor(S)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setRightBorderColor(S)V

    .line 348
    :goto_0
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 333
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setRightBorderColor(I)V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    .line 339
    :goto_0
    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 361
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 362
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 363
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setTopBorderColor(S)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setTopBorderColor(S)V

    .line 367
    :goto_0
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 352
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setTopBorderColor(I)V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    .line 358
    :goto_0
    return-void
.end method

.method public setVerticalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 463
    return-void
.end method

.method public setVerticalBorderColor(S)V
    .locals 0
    .param p1, "color"    # S

    .line 455
    return-void
.end method
