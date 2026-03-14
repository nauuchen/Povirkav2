.class public Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
.super Ljava/lang/Object;
.source "XSSFTextRun.java"


# instance fields
.field private final _p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

.field private final _r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V
    .locals 0
    .param p1, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .param p2, "p"    # Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 40
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    .line 41
    return-void
.end method


# virtual methods
.method public getCharacterSpacing()D
    .locals 5

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 131
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSpc()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, v3

    return-wide v1

    .line 134
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 8

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 76
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 79
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v3

    .line 81
    .local v3, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object v4

    .line 82
    .local v4, "rgb":[B
    new-instance v5, Ljava/awt/Color;

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v5, v2, v6, v7}, Ljava/awt/Color;-><init>(III)V

    return-object v5

    .line 86
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v3    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    .end local v4    # "rgb":[B
    :cond_0
    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    return-object v1
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    .line 189
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 190
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 191
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 194
    :cond_0
    const-string v2, "Calibri"

    return-object v2
.end method

.method public getFontSize()D
    .locals 10

    .line 111
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 112
    .local v0, "scale":D
    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    .line 113
    .local v2, "size":D
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getParentParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getParentShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v4

    .line 114
    .local v4, "afit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getFontScale()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x40f86a0000000000L    # 100000.0

    div-double v0, v5, v7

    .line 116
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v5

    .line 117
    .local v5, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v2, v6, v8

    .line 121
    :cond_1
    mul-double v6, v2, v0

    return-wide v6
.end method

.method getParentParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    return-object v0
.end method

.method public getPitchAndFamily()B
    .locals 3

    .line 198
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 199
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 200
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v2

    return v2

    .line 203
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCap()Lorg/apache/poi/xssf/usermodel/TextCap;
    .locals 3

    .line 285
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 286
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextCap;->values()[Lorg/apache/poi/xssf/usermodel/TextCap;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 289
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextCap;->NONE:Lorg/apache/poi/xssf/usermodel/TextCap;

    return-object v1
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    return-object v0
.end method

.method public isBold()Z
    .locals 2

    .line 305
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 306
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getB()Z

    move-result v1

    return v1

    .line 309
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isItalic()Z
    .locals 2

    .line 323
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 324
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getI()Z

    move-result v1

    return v1

    .line 327
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isStrikethrough()Z
    .locals 4

    .line 219
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 220
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetStrike()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    move-result-object v1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 223
    :cond_1
    return v2
.end method

.method public isSubscript()Z
    .locals 3

    .line 274
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 275
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getBaseline()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 278
    :cond_1
    return v2
.end method

.method public isSuperscript()Z
    .locals 3

    .line 230
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 231
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getBaseline()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 234
    :cond_1
    return v2
.end method

.method public isUnderline()Z
    .locals 4

    .line 341
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 342
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetU()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 343
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 345
    :cond_1
    return v2
.end method

.method public setBaselineOffset(D)V
    .locals 2
    .param p1, "baselineOffset"    # D

    .line 247
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    double-to-int v1, p1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(I)V

    .line 248
    return-void
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    .line 299
    return-void
.end method

.method public setCharacterSpacing(D)V
    .locals 4
    .param p1, "spc"    # D

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 148
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 149
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSpc()V

    goto :goto_0

    .line 151
    :cond_0
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSpc(I)V

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;

    .line 162
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setFontFamily(Ljava/lang/String;BBZ)V

    .line 163
    return-void
.end method

.method public setFontColor(Ljava/awt/Color;)V
    .locals 6
    .param p1, "color"    # Ljava/awt/Color;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 61
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 62
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    .line 63
    .local v2, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 65
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetHslClr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetHslClr()V

    .line 66
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetPrstClr()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetPrstClr()V

    .line 67
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSchemeClr()V

    .line 68
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetScrgbClr()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetScrgbClr()V

    .line 69
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSysClr()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSysClr()V

    .line 71
    :cond_6
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;BBZ)V
    .locals 3
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "charset"    # B
    .param p3, "pictAndFamily"    # B
    .param p4, "isSymbol"    # Z

    .line 166
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 168
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-nez p1, :cond_2

    .line 169
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetLatin()V

    .line 170
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetCs()V

    .line 171
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSym()V

    goto :goto_2

    .line 173
    :cond_2
    if-eqz p4, :cond_4

    .line 174
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 175
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 176
    .end local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    goto :goto_2

    .line 177
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 178
    .local v1, "latin":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 179
    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    .line 180
    :cond_6
    if-eq p3, v2, :cond_7

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    .line 183
    .end local v1    # "latin":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :cond_7
    :goto_2
    return-void
.end method

.method public setFontSize(D)V
    .locals 4
    .param p1, "fontSize"    # D

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 96
    .local v0, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 97
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSz()V

    goto :goto_0

    .line 99
    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_2

    .line 103
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minimum font size is 1pt but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z

    .line 316
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    .line 317
    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 2
    .param p1, "strike"    # Z

    .line 212
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->SNG_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    .line 213
    return-void
.end method

.method public setSubscript(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 267
    if-eqz p1, :cond_0

    const-wide/high16 v0, -0x3fc7000000000000L    # -25.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setBaselineOffset(D)V

    .line 268
    return-void
.end method

.method public setSuperscript(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 257
    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setBaselineOffset(D)V

    .line 258
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setUnderline(Z)V
    .locals 2
    .param p1, "underline"    # Z

    .line 334
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
