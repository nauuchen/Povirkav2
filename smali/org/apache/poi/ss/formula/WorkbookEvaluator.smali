.class public final Lorg/apache/poi/ss/formula/WorkbookEvaluator;
.super Ljava/lang/Object;
.source "WorkbookEvaluator.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final EVAL_LOG:Lorg/apache/poi/util/POILogger;

.field private _cache:Lorg/apache/poi/ss/formula/EvaluationCache;

.field private _collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

.field private final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private _ignoreMissingWorkbooks:Z

.field private final _sheetIndexesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheetIndexesBySheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/EvaluationSheet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private _workbookIx:I

.field private dbgEvaluationOutputForNextEval:Z

.field private dbgEvaluationOutputIndent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "evaluationListener"    # Lorg/apache/poi/ss/formula/IEvaluationListener;
    .param p3, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p4, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "POI.FormulaEval"

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 95
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 96
    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 97
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 98
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    .line 100
    sget-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 102
    iput-object p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 106
    .local v0, "defaultToolkit":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 107
    invoke-virtual {v0, p4}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 109
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p2, "stabilityClassifier"    # Lorg/apache/poi/ss/formula/IStabilityClassifier;
    .param p3, "udfFinder"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 92
    return-void
.end method

.method private addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .locals 7
    .param p1, "inner"    # Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .line 344
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "sheetName":Ljava/lang/String;
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 346
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating cell "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {v3, v1, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 348
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "sheetName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Can\'t add exception info"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 351
    return-object p1
.end method

.method private static countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I
    .locals 4
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "startIndex"    # I
    .param p2, "distInBytes"    # I

    .line 562
    move v0, p2

    .line 563
    .local v0, "remBytes":I
    move v1, p1

    .line 564
    .local v1, "index":I
    :goto_0
    if-eqz v0, :cond_2

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 566
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v2

    sub-int/2addr v0, v2

    .line 567
    if-ltz v0, :cond_1

    .line 570
    array-length v2, p0

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Skip distance too far (ran out of formula tokens)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bad skip distance (wrong token size calculation)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 574
    :cond_2
    sub-int v2, v1, p1

    return v2
.end method

.method public static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "evaluationResult"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRowNum"    # I
    .param p2, "srcColNum"    # I

    .line 589
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .local v0, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 593
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_0

    .line 595
    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object v1

    .line 599
    :cond_0
    return-object v0

    .line 590
    .end local v0    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 591
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method private evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "region"    # Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .param p4, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;

    .line 794
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    if-nez v9, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 795
    .local v10, "sheetName":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 797
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v11

    .line 798
    .local v11, "sheetIndex":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    invoke-static {v12, v0, v13, v11, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v14

    .line 800
    .local v14, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object/from16 v15, p3

    invoke-virtual {v8, v14, v9, v15}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    .line 802
    new-instance v16, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    invoke-virtual/range {p4 .. p4}, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue()Z

    move-result v7

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    .line 803
    .local v0, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    invoke-virtual {v8, v14, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 795
    .end local v0    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v11    # "sheetIndex":I
    .end local v14    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    move-object/from16 v12, p1

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sheet name is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 252
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->isCellFinal(III)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v15, v0

    .line 254
    .local v15, "shouldCellDependencyBeRecorded":Z
    if-eqz v9, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_2

    move/from16 v16, v15

    goto/16 :goto_8

    .line 262
    :cond_2
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0, v9}, Lorg/apache/poi/ss/formula/EvaluationCache;->getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v7

    .line 263
    .local v7, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-nez v15, :cond_3

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->isInputSensitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    :cond_3
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 266
    :cond_4
    iget-object v6, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 268
    .local v6, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    if-nez v0, :cond_e

    .line 269
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 270
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 272
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iget-object v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v14, v6

    .end local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .local v14, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    move/from16 v6, p4

    move/from16 v16, v15

    move-object v15, v7

    .end local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v15, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v16, "shouldCellDependencyBeRecorded":Z
    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 276
    .local v1, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 277
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v14, :cond_6

    .line 278
    invoke-virtual {v8, v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .local v2, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_2

    .line 280
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    invoke-interface {v14, v9, v15}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onStartEvaluate(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 281
    invoke-virtual {v8, v1, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_1
    invoke-interface {v14, v15, v2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onEndEvaluate(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 285
    :goto_2
    invoke-virtual {v13, v2}, Lorg/apache/poi/ss/formula/EvaluationTracker;->updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    .end local v0    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_3
    invoke-virtual {v13, v15}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 317
    goto/16 :goto_5

    .line 289
    :catch_0
    move-exception v0

    goto :goto_4

    .line 287
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 316
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catchall_0
    move-exception v0

    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto/16 :goto_7

    .line 289
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_2
    move-exception v0

    .line 290
    .local v0, "re":Ljava/lang/RuntimeException;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    if-eqz v3, :cond_d

    iget-boolean v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    if-eqz v3, :cond_d

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Continuing with cached value!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logInfo(Ljava/lang/String;)V

    .line 292
    sget-object v3, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 306
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    move-object v2, v3

    .line 307
    goto :goto_3

    .line 310
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected cell type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    throw v3

    .line 303
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v3

    move-object v2, v3

    .line 304
    goto/16 :goto_3

    .line 300
    :cond_9
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    move-object v2, v3

    .line 301
    goto/16 :goto_3

    .line 297
    :cond_a
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 298
    goto/16 :goto_3

    .line 294
    :cond_b
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 295
    goto/16 :goto_3

    .line 318
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :goto_5
    nop

    .line 324
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 325
    invoke-virtual {v8, v10}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "sheetName":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v11, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 327
    .local v1, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evaluated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logDebug(Ljava/lang/String;)V

    .line 333
    .end local v0    # "sheetName":Ljava/lang/String;
    .end local v1    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_c
    return-object v2

    .line 313
    .local v0, "re":Ljava/lang/RuntimeException;
    .local v1, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    :cond_d
    nop

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :try_start_3
    throw v0

    .line 287
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :catch_3
    move-exception v0

    .line 288
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_6
    invoke-direct {v8, v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    move-result-object v3

    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .end local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .end local p2    # "sheetIndex":I
    .end local p3    # "rowIndex":I
    .end local p4    # "columnIndex":I
    .end local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .restart local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v15    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local p1    # "srcCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    .restart local p2    # "sheetIndex":I
    .restart local p3    # "rowIndex":I
    .restart local p4    # "columnIndex":I
    .restart local p5    # "tracker":Lorg/apache/poi/ss/formula/EvaluationTracker;
    :catchall_1
    move-exception v0

    :goto_7
    invoke-virtual {v13, v15}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    throw v0

    .line 319
    .end local v1    # "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .restart local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .restart local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .local v15, "shouldCellDependencyBeRecorded":Z
    :cond_e
    move-object v14, v6

    move/from16 v16, v15

    move-object v15, v7

    .end local v6    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v7    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .local v15, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    if-eqz v14, :cond_f

    .line 320
    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {v14, v10, v11, v12, v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 322
    :cond_f
    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 254
    .end local v14    # "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    .end local v16    # "shouldCellDependencyBeRecorded":Z
    .local v15, "shouldCellDependencyBeRecorded":Z
    :cond_10
    move/from16 v16, v15

    .line 255
    .end local v15    # "shouldCellDependencyBeRecorded":Z
    .restart local v16    # "shouldCellDependencyBeRecorded":Z
    :goto_8
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 256
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-eqz v16, :cond_11

    .line 257
    iget v2, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    move-object/from16 v1, p5

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptPlainValueDependency(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 259
    :cond_11
    return-object v0
.end method

.method private getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "nameRecord"    # Lorg/apache/poi/ss/formula/EvaluationName;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 694
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 697
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 701
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t now how to evalate name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 612
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-eqz v0, :cond_0

    .line 614
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 615
    .local v0, "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 616
    .local v1, "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 618
    .end local v0    # "namePtg":Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .end local v1    # "nameRecord":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v0, :cond_1

    .line 620
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 622
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    if-eqz v0, :cond_2

    .line 624
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 627
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_3

    .line 628
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 630
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_4

    .line 631
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 633
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    if-eqz v0, :cond_5

    .line 634
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 636
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    if-eqz v0, :cond_6

    .line 637
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v0

    return-object v0

    .line 639
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eqz v0, :cond_7

    .line 640
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0

    .line 642
    :cond_7
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;

    if-eqz v0, :cond_8

    .line 643
    sget-object v0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    return-object v0

    .line 645
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 649
    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_a

    .line 650
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 652
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_b

    .line 653
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 655
    :cond_b
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_c

    .line 656
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 658
    :cond_c
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_d

    .line 659
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 661
    :cond_d
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_e

    .line 662
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 663
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;->getColumn()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 665
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_e
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_f

    .line 666
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 667
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 670
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    :cond_f
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    if-nez v0, :cond_11

    .line 676
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v0, :cond_10

    .line 679
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ExpPtg currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UnknownPtg not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_12
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 905
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 906
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 907
    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 908
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 4
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 206
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 208
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v1

    .line 209
    .local v1, "sheetIndex":I
    if-ltz v1, :cond_0

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Specified sheet from a different book"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .end local v1    # "sheetIndex":I
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 894
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 895
    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 896
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method static getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 360
    if-nez p0, :cond_0

    .line 361
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object v0

    .line 363
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 364
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 374
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 376
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    return-object v1

    .line 372
    :cond_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object v1

    .line 368
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 366
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method private static isDebugLogEnabled()Z
    .locals 2

    .line 133
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static isInfoLogEnabled()Z
    .locals 2

    .line 136
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 144
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isInfoLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method private processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 686
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    if-eqz v0, :cond_0

    .line 687
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->getName()Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 688
    .local v0, "name":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 690
    .end local v0    # "name":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_0
    return-object p1
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 920
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 921
    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/Function;

    .line 932
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 933
    return-void
.end method


# virtual methods
.method protected adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;II)Z
    .locals 14
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "deltaRow"    # I
    .param p3, "deltaColumn"    # I

    .line 834
    if-ltz p2, :cond_7

    .line 835
    if-ltz p3, :cond_6

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "shifted":Z
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 839
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    if-eqz v5, :cond_3

    .line 840
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 842
    .local v5, "ref":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    move-object v6, p0

    iget-object v7, v6, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v7

    .line 843
    .local v7, "version":Lorg/apache/poi/ss/SpreadsheetVersion;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v8

    const-string v9, " was requested."

    const-string v10, " files can only have "

    if-eqz v8, :cond_1

    .line 844
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v8

    add-int v8, v8, p2

    .line 845
    .local v8, "rowIndex":I
    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v11

    if-gt v8, v11, :cond_0

    .line 848
    invoke-virtual {v5, v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 849
    const/4 v0, 0x1

    goto :goto_1

    .line 846
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " rows, but row "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 851
    .end local v8    # "rowIndex":I
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 852
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v8

    add-int v8, v8, p3

    .line 853
    .local v8, "colIndex":I
    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v11

    if-gt v8, v11, :cond_2

    .line 856
    invoke-virtual {v5, v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    .line 857
    const/4 v0, 0x1

    goto :goto_2

    .line 854
    :cond_2
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " columns, but column "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 839
    .end local v5    # "ref":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    .end local v7    # "version":Lorg/apache/poi/ss/SpreadsheetVersion;
    .end local v8    # "colIndex":I
    :cond_3
    move-object v6, p0

    .line 837
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v6, p0

    .line 861
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    return v0

    .line 835
    .end local v0    # "shifted":Z
    :cond_6
    move-object v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset column must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_7
    move-object v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset row must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z
    .locals 3
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "target"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "region"    # Lorg/apache/poi/ss/util/CellRangeAddressBase;

    .line 816
    invoke-virtual {p3, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;II)Z

    move-result v0

    return v0

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V
    .locals 0
    .param p1, "collaboratingWorkbooksEnvironment"    # Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .param p2, "cache"    # Lorg/apache/poi/ss/formula/EvaluationCache;
    .param p3, "workbookIx"    # I

    .line 149
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 150
    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 151
    iput p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 152
    return-void
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationCache;->clear()V

    .line 184
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->clearAllCachedResultValues()V

    .line 186
    return-void
.end method

.method detachFromEnvironment()V
    .locals 2

    .line 162
    sget-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 163
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 165
    return-void
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "ref"    # Lorg/apache/poi/ss/util/CellReference;

    .line 736
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "sheetName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 739
    const/4 v1, -0x1

    .local v1, "sheetIndex":I
    goto :goto_1

    .line 741
    .end local v1    # "sheetIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 743
    .restart local v1    # "sheetIndex":I
    :goto_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    :goto_2
    move v9, v3

    .line 744
    .local v9, "rowIndex":I
    if-nez p2, :cond_3

    const/4 v7, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    move v7, v2

    .line 745
    .local v7, "colIndex":S
    :goto_3
    new-instance v10, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v8, v2}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v2, v10

    move-object v3, p0

    move v5, v1

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 753
    .local v2, "ec":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v3, v4, v1, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 754
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "region"    # Lorg/apache/poi/ss/util/CellRangeAddressBase;

    .line 772
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 219
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 220
    .local v0, "sheetIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method

.method evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 386
    nop

    .line 387
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 389
    iput v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 390
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 392
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    const-string v3, ""

    if-lez v0, :cond_1

    .line 395
    const-string v0, "                                                                                                    "

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- evaluateFormula(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\Qorg.apache.poi.ss.formula.ptg.\\E"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 401
    iget v3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    move-object v3, v0

    .line 404
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 405
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    const-string v6, ": "

    const/4 v7, 0x3

    if-ge v5, v4, :cond_13

    .line 407
    aget-object v8, p2, v5

    .line 408
    iget v9, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v9, :cond_2

    .line 409
    iget-object v9, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-array v10, v2, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  * ptg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", stack: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    invoke-virtual {v9, v7, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 411
    :cond_2
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v6, :cond_a

    .line 412
    move-object v6, v8

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 413
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 416
    sget-object v8, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 418
    :cond_3
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 419
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 420
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getJumpTable()[I

    move-result-object v8

    .line 422
    array-length v9, v8

    .line 424
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v11

    invoke-static {v7, v10, v11}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v7

    .line 425
    if-lt v7, v2, :cond_5

    if-le v7, v9, :cond_4

    goto :goto_1

    .line 429
    :cond_4
    add-int/lit8 v7, v7, -0x1

    aget v6, v8, v7

    goto :goto_2

    .line 426
    :cond_5
    :goto_1
    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x4

    .line 434
    :goto_2
    goto :goto_3

    .line 431
    :catch_0
    move-exception v7

    .line 432
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    .line 437
    :goto_3
    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    .line 438
    invoke-static {p2, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int/2addr v5, v6

    .line 439
    goto/16 :goto_6

    .line 441
    :cond_6
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 442
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 445
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result v7
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    nop

    .line 455
    if-eqz v7, :cond_7

    goto/16 :goto_6

    .line 458
    :cond_7
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    .line 459
    invoke-static {p2, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int/2addr v5, v6

    .line 460
    add-int/lit8 v6, v5, 0x1

    aget-object v7, p2, v6

    .line 461
    aget-object v8, p2, v5

    instance-of v8, v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v8, :cond_8

    instance-of v8, v7, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v8, :cond_8

    check-cast v7, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getFunctionIndex()S

    move-result v7

    if-ne v7, v2, :cond_8

    .line 466
    nop

    .line 467
    sget-object v5, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    .line 470
    :cond_8
    goto/16 :goto_6

    .line 446
    :catch_1
    move-exception v7

    .line 447
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    .line 449
    invoke-static {p2, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int/2addr v5, v6

    .line 450
    aget-object v6, p2, v5

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 451
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    add-int/2addr v6, v2

    .line 452
    invoke-static {p2, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int/2addr v5, v6

    .line 453
    goto/16 :goto_6

    .line 472
    :cond_9
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 473
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    add-int/2addr v6, v2

    .line 474
    invoke-static {p2, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int/2addr v5, v6

    .line 475
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v6, v7, :cond_12

    .line 476
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 477
    sget-object v6, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 482
    :cond_a
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-eqz v6, :cond_b

    .line 484
    goto/16 :goto_6

    .line 486
    :cond_b
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v6, :cond_12

    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v6, :cond_c

    .line 488
    goto/16 :goto_6

    .line 490
    :cond_c
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v6, :cond_d

    .line 491
    goto :goto_6

    .line 494
    :cond_d
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-eqz v6, :cond_e

    .line 495
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 496
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 497
    new-instance v8, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-direct {v8, v7, v6}, Lorg/apache/poi/ss/formula/eval/RefListEval;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    goto :goto_6

    .line 502
    :cond_e
    instance-of v6, v8, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v6, :cond_10

    .line 503
    check-cast v8, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 505
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v6

    .line 506
    new-array v9, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 509
    sub-int/2addr v6, v2

    :goto_4
    if-ltz v6, :cond_f

    .line 510
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 511
    aput-object v10, v9, v6

    .line 509
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 514
    :cond_f
    invoke-static {v8, v9, p1}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 515
    goto :goto_5

    .line 516
    :cond_10
    invoke-direct {p0, v8, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 518
    :goto_5
    if-eqz v6, :cond_11

    .line 522
    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget v8, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v8, :cond_12

    .line 524
    iget-object v8, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-array v9, v2, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-virtual {v8, v7, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_6

    .line 519
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Evaluation result must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 405
    :cond_12
    :goto_6
    add-int/2addr v5, v2

    goto/16 :goto_0

    .line 528
    :cond_13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 529
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 535
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->isSingleValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 536
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {p2, v0, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    goto :goto_7

    .line 538
    :cond_14
    nop

    .line 541
    :goto_7
    iget v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v0, :cond_15

    .line 542
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "finshed eval of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p1

    invoke-direct {v5, v8, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v7, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 545
    iget p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 546
    if-ne p1, v2, :cond_15

    .line 548
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 551
    :cond_15
    return-object p2

    .line 530
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "evaluation stack not empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluateList(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "region"    # Lorg/apache/poi/ss/util/CellRangeAddressBase;

    .line 790
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 708
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 709
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 711
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I
    .param p5, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 721
    invoke-interface {p1, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v6

    .line 722
    .local v6, "cell":Lorg/apache/poi/ss/formula/EvaluationCell;
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    return-object v0
.end method

.method getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-object v0
.end method

.method getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    return-object v0
.end method

.method getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .line 128
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 129
    .local v0, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    return-object v0
.end method

.method getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    return-object v0
.end method

.method getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 120
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    return-object v0
.end method

.method getSheetIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 230
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "sheetIndex":I
    if-gez v1, :cond_0

    .line 232
    const/4 v2, -0x1

    return v2

    .line 234
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v1    # "sheetIndex":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getSheetIndexByExternIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 241
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 116
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public isDebugEvaluationOutputForNextEval()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    return v0
.end method

.method public isIgnoreMissingWorkbooks()Z
    .locals 1

    .line 884
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    return v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 201
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 202
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 203
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 193
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    .line 194
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    .line 195
    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 936
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 937
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .line 881
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 882
    return-void
.end method
