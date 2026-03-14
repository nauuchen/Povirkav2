.class public final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.source "XSSFEvaluationWorkbook.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 43
    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    .line 50
    invoke-super {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->clearAllCachedResultValues()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    .line 52
    return-void
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p1, "evalCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->getXSSFCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    .line 83
    .local v0, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 84
    .local v1, "sheetIndex":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    .line 85
    .local v2, "rowIndex":I
    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {v3, p0, v4, v1, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    return-object v3
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 5
    .param p1, "sheetIndex"    # I

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    .line 68
    .local v0, "numberOfSheets":I
    new-array v1, v0, [Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    aput-object v3, v2, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "numberOfSheets":I
    .end local v1    # "i":I
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2
    .param p1, "evalSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 57
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    return v1
.end method
