.class public Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
.super Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.source "XSSFDialogsheet.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# instance fields
.field protected dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 38
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    .line 39
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 1
    .param p1, "rowNum"    # I

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialog()Z
    .locals 1

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected getSheetTypeColumnBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypePageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypePrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypeProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypeRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetFormatPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    return-object v0
.end method

.method protected getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    return-object v0
.end method
