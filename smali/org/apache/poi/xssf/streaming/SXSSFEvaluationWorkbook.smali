.class public final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.source "SXSSFEvaluationWorkbook.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _uBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 45
    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method


# virtual methods
.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p1, "evalCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->getSXSSFCell()Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    .line 61
    .local v0, "cell":Lorg/apache/poi/xssf/streaming/SXSSFCell;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v3

    invoke-static {v1, p0, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2
    .param p1, "sheetIndex"    # I

    .line 55
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    return-object v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2
    .param p1, "evalSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->getSXSSFSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    .line 50
    .local v0, "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    return v1
.end method
