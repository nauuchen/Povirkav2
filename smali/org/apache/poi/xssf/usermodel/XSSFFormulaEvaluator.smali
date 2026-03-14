.class public final Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.source "XSSFFormulaEvaluator.java"


# instance fields
.field private _book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p2, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 46
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->_book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 48
    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
    .locals 1
    .param p0, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p1, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p2, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 57
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .param p0, "wb"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 72
    invoke-static {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 73
    return-void
.end method


# virtual methods
.method public evaluateAll()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->_book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    .line 93
    return-void
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 77
    invoke-super {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    return-object v0
.end method

.method protected toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 99
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type of cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Only XSSFCells can be evaluated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
