.class public final Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.source "SXSSFFormulaEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;,
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p2, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 48
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 50
    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    .locals 1
    .param p0, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p1, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p2, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 59
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V
    .locals 10
    .param p0, "wb"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p1, "skipOutOfWindow"    # Z

    .line 87
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    .line 90
    .local v0, "eval":Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 91
    .local v2, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->areAllRowsFlushed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    goto :goto_0

    .restart local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_0
    new-instance v3, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;

    invoke-direct {v3}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;-><init>()V

    throw v3

    .line 97
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 100
    .restart local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getLastFlushedRowNum()I

    move-result v3

    .line 101
    .local v3, "lastFlushedRowNum":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 102
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 103
    sget-object v5, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rows up to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " have already been flushed, skipping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 102
    :cond_2
    new-instance v5, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;

    invoke-direct {v5, v4}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;-><init>(I)V

    throw v5

    .line 107
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Row;

    .line 108
    .local v5, "r":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/usermodel/Cell;

    .line 109
    .local v7, "c":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v8, v9, :cond_4

    .line 110
    invoke-virtual {v0, v7}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    .end local v7    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_4
    goto :goto_4

    .end local v5    # "r":Lorg/apache/poi/ss/usermodel/Row;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    goto :goto_3

    .line 114
    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v3    # "lastFlushedRowNum":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    goto :goto_1

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method


# virtual methods
.method public evaluateAll()V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V

    .line 127
    return-void
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 77
    invoke-super {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object v0
.end method

.method protected toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 67
    instance-of v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    return-object v0

    .line 68
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

    const-string v2, " Only SXSSFCells can be evaluated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
