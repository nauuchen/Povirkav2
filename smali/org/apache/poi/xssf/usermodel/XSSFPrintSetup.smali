.class public Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;
.super Ljava/lang/Object;
.source "XSSFPrintSetup.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PrintSetup;


# instance fields
.field private ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

.field private pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

.field private pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;


# direct methods
.method protected constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 1
    .param p1, "worksheet"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 45
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    .line 50
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->ctWorksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    .line 55
    :goto_1
    return-void
.end method


# virtual methods
.method public getCellComment()Lorg/apache/poi/ss/usermodel/PrintCellComments;
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getCellComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;

    move-result-object v0

    .line 270
    .local v0, "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintCellComments;->NONE:Lorg/apache/poi/ss/usermodel/PrintCellComments;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/PrintCellComments;->valueOf(I)Lorg/apache/poi/ss/usermodel/PrintCellComments;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCopies()S
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getCopies()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getDraft()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getDraft()Z

    move-result v0

    return v0
.end method

.method public getFitHeight()S
    .locals 2

    .line 345
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFitToHeight()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getFitWidth()S
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFitToWidth()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getFooterMargin()D
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getFooter()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHResolution()S
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getHorizontalDpi()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getHeaderMargin()D
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getHeader()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLandscape()Z
    .locals 2

    .line 363
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLeftToRight()Z
    .locals 2

    .line 354
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getPageOrder()Lorg/apache/poi/ss/usermodel/PageOrder;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNoColor()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getBlackAndWhite()Z

    move-result v0

    return v0
.end method

.method public getNoOrientation()Z
    .locals 2

    .line 411
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotes()Z
    .locals 2

    .line 402
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getCellComment()Lorg/apache/poi/ss/usermodel/PrintCellComments;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintCellComments;->AS_DISPLAYED:Lorg/apache/poi/ss/usermodel/PrintCellComments;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOrientation()Lorg/apache/poi/ss/usermodel/PrintOrientation;
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;

    move-result-object v0

    .line 264
    .local v0, "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->valueOf(I)Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getPageOrder()Lorg/apache/poi/ss/usermodel/PageOrder;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/PageOrder;->valueOf(I)Lorg/apache/poi/ss/usermodel/PageOrder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPageStart()S
    .locals 2

    .line 327
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getFirstPageNumber()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getPaperSize()S
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getPaperSize()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getPaperSizeEnum()Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 2

    .line 308
    invoke-static {}, Lorg/apache/poi/ss/usermodel/PaperSize;->values()[Lorg/apache/poi/ss/usermodel/PaperSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->getPaperSize()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScale()S
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getScale()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getUsePage()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getUseFirstPageNumber()Z

    move-result v0

    return v0
.end method

.method public getVResolution()S
    .locals 2

    .line 438
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getVerticalDpi()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getValidSettings()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->getUsePrinterDefaults()Z

    move-result v0

    return v0
.end method

.method public setCopies(S)V
    .locals 3
    .param p1, "copies"    # S

    .line 242
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setCopies(J)V

    .line 243
    return-void
.end method

.method public setDraft(Z)V
    .locals 1
    .param p1, "d"    # Z

    .line 166
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setDraft(Z)V

    .line 167
    return-void
.end method

.method public setFitHeight(S)V
    .locals 3
    .param p1, "height"    # S

    .line 112
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFitToHeight(J)V

    .line 113
    return-void
.end method

.method public setFitWidth(S)V
    .locals 3
    .param p1, "width"    # S

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFitToWidth(J)V

    .line 104
    return-void
.end method

.method public setFooterMargin(D)V
    .locals 1
    .param p1, "footermargin"    # D

    .line 233
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    .line 234
    return-void
.end method

.method public setHResolution(S)V
    .locals 3
    .param p1, "resolution"    # S

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setHorizontalDpi(J)V

    .line 207
    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 1
    .param p1, "headermargin"    # D

    .line 224
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageMargins:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    .line 225
    return-void
.end method

.method public setLandscape(Z)V
    .locals 1
    .param p1, "ls"    # Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->PORTRAIT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V

    .line 137
    :goto_0
    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 1
    .param p1, "ltor"    # Z

    .line 121
    if-eqz p1, :cond_0

    .line 122
    sget-object v0, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setPageOrder(Lorg/apache/poi/ss/usermodel/PageOrder;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/PageOrder;->DOWN_THEN_OVER:Lorg/apache/poi/ss/usermodel/PageOrder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setPageOrder(Lorg/apache/poi/ss/usermodel/PageOrder;)V

    .line 125
    :goto_0
    return-void
.end method

.method public setNoColor(Z)V
    .locals 1
    .param p1, "mono"    # Z

    .line 157
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setBlackAndWhite(Z)V

    .line 158
    return-void
.end method

.method public setNoOrientation(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .line 186
    if-eqz p1, :cond_0

    .line 187
    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setNotes(Z)V
    .locals 2
    .param p1, "printnotes"    # Z

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments;->AS_DISPLAYED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setCellComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setOrientation(Lorg/apache/poi/ss/usermodel/PrintOrientation;)V
    .locals 2
    .param p1, "orientation"    # Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 252
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;

    move-result-object v0

    .line 253
    .local v0, "v":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;)V

    .line 254
    return-void
.end method

.method public setPageOrder(Lorg/apache/poi/ss/usermodel/PageOrder;)V
    .locals 2
    .param p1, "pageOrder"    # Lorg/apache/poi/ss/usermodel/PageOrder;

    .line 279
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/PageOrder;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    .line 280
    .local v0, "v":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setPageOrder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;)V

    .line 281
    return-void
.end method

.method public setPageStart(S)V
    .locals 3
    .param p1, "start"    # S

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setFirstPageNumber(J)V

    .line 95
    return-void
.end method

.method public setPaperSize(Lorg/apache/poi/ss/usermodel/PaperSize;)V
    .locals 1
    .param p1, "size"    # Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/PaperSize;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setPaperSize(S)V

    .line 73
    return-void
.end method

.method public setPaperSize(S)V
    .locals 3
    .param p1, "size"    # S

    .line 63
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setPaperSize(J)V

    .line 64
    return-void
.end method

.method public setScale(S)V
    .locals 3
    .param p1, "scale"    # S

    .line 83
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setScale(J)V

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Scale value not accepted: you must choose a value between 10 and 400."

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUsePage(Z)V
    .locals 1
    .param p1, "page"    # Z

    .line 197
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setUseFirstPageNumber(Z)V

    .line 198
    return-void
.end method

.method public setVResolution(S)V
    .locals 3
    .param p1, "resolution"    # S

    .line 215
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setVerticalDpi(J)V

    .line 216
    return-void
.end method

.method public setValidSettings(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .line 148
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->pageSetup:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->setUsePrinterDefaults(Z)V

    .line 149
    return-void
.end method
