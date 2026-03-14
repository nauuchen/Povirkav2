.class public final Lorg/apache/poi/ss/formula/OperationEvaluationContext;
.super Ljava/lang/Object;
.source "OperationEvaluationContext.java"


# static fields
.field public static final UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _columnIndex:I

.field private final _isSingleValue:Z

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V
    .locals 8
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p3, "sheetIndex"    # I
    .param p4, "srcRowNum"    # I
    .param p5, "srcColNum"    # I
    .param p6, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 60
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V
    .locals 0
    .param p1, "bookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "workbook"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .param p3, "sheetIndex"    # I
    .param p4, "srcRowNum"    # I
    .param p5, "srcColNum"    # I
    .param p6, "tracker"    # Lorg/apache/poi/ss/formula/EvaluationTracker;
    .param p7, "isSingleValue"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 66
    iput-object p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 67
    iput p3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    .line 68
    iput p4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    .line 69
    iput p5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    .line 70
    iput-object p6, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 71
    iput-boolean p7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    .line 72
    return-void
.end method

.method private static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, "len":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 302
    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v1

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    return-object v1
.end method

.method private createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 4
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .local v1, "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    goto :goto_0

    .line 156
    .end local v1    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_0
    if-eqz p2, :cond_3

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .restart local v1    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    nop

    .line 165
    :goto_0
    if-nez p2, :cond_1

    iget v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "otherSheetIndex":I
    :goto_1
    if-gez v2, :cond_2

    .line 167
    return-object v0

    .line 169
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    return-object v0

    .line 161
    .end local v1    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v2    # "otherSheetIndex":I
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 162
    .local v1, "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    .local v2, "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    return-object v0

    .line 157
    .end local v1    # "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    .end local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null if workbookName is provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "externName"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .param p2, "workbookName"    # Ljava/lang/String;

    .line 432
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    .line 433
    .local v0, "refWorkbookEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getIx()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    move-object v8, v1

    .line 434
    .local v8, "evaluationName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_3

    .line 440
    new-instance v9, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    move-object v1, v9

    .line 443
    .local v1, "refWorkbookContext":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 444
    .local v2, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v3, :cond_0

    .line 445
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 446
    .local v3, "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v1, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 447
    .end local v3    # "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_0
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v3, :cond_1

    .line 448
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 449
    .local v3, "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-virtual {v1, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 450
    .end local v3    # "ref3D":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v3, :cond_2

    .line 451
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 452
    .local v3, "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v1, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 453
    .end local v3    # "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_2
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v3, :cond_4

    .line 454
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 455
    .local v3, "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-virtual {v1, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    return-object v4

    .line 436
    .end local v1    # "refWorkbookContext":Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .end local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v3    # "area3D":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Complex name formulas not supported yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .end local p2    # "workbookName":Ljava/lang/String;
    throw v1

    .line 458
    .restart local p1    # "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .restart local p2    # "workbookName":Ljava/lang/String;
    :cond_4
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 459
    .end local v0    # "refWorkbookEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v8    # "evaluationName":Lorg/apache/poi/ss/formula/EvaluationName;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "wnfe":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "nameXPtg"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .line 394
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 398
    .local v1, "sheetNameAt":I
    const/4 v2, 0x0

    .line 399
    .local v2, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "sheetName":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "nameName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v5, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v4, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    .line 404
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "nameName":Ljava/lang/String;
    goto :goto_0

    .line 406
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v4, v0, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    .line 409
    :goto_0
    if-eqz v2, :cond_1

    .line 411
    new-instance v3, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object v3

    .line 414
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v3, v0}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "nameXPxg"    # Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .line 377
    const/4 v0, -0x1

    .line 378
    .local v0, "sIdx":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 383
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    .line 385
    .local v2, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v2, :cond_1

    .line 387
    new-instance v3, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object v3

    .line 390
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private static parseColRef(Ljava/lang/String;)I
    .locals 1
    .param p0, "refStrPart"    # Ljava/lang/String;

    .line 296
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static parseRowRef(Ljava/lang/String;)I
    .locals 1
    .param p0, "refStrPart"    # Ljava/lang/String;

    .line 292
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 95
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v1

    return-object v1
.end method

.method createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 2
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 90
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 91
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v1

    return-object v1
.end method

.method createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 8
    .param p1, "externalSheet"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    .line 100
    const/4 v0, -0x1

    .line 101
    .local v0, "otherLastSheetIndex":I
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "workbookName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v3, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v2, "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    nop

    .line 123
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, "otherFirstSheetIndex":I
    instance-of v4, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v4, :cond_1

    .line 125
    move-object v4, p1

    check-cast v4, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "lastSheetName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    .end local v4    # "lastSheetName":Ljava/lang/String;
    :cond_1
    if-ltz v3, :cond_2

    goto :goto_2

    .line 130
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sheet name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in bool \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v3    # "otherFirstSheetIndex":I
    :catch_0
    move-exception v3

    .line 120
    .restart local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .local v3, "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v1    # "workbookName":Ljava/lang/String;
    .end local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v3    # "e":Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 104
    .restart local v2    # "targetEvaluator":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    if-nez p1, :cond_4

    .line 105
    const/4 v1, 0x0

    move v3, v1

    .local v1, "otherFirstSheetIndex":I
    goto :goto_1

    .line 107
    .end local v1    # "otherFirstSheetIndex":I
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    .line 110
    .local v3, "otherFirstSheetIndex":I
    :goto_1
    instance-of v1, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v1, :cond_5

    .line 111
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "lastSheetName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v4, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 135
    .end local v1    # "lastSheetName":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 137
    move v0, v3

    .line 140
    :cond_6
    sub-int v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 141
    .local v1, "evals":[Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_7

    .line 142
    add-int v5, v4, v3

    .line 143
    .local v5, "otherSheetIndex":I
    new-instance v6, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v6, v2, v7, v5}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    aput-object v6, v1, v4

    .line 141
    .end local v5    # "otherSheetIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 145
    .end local v4    # "i":I
    :cond_7
    new-instance v4, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {v4, v3, v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v4
.end method

.method createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    .line 87
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    return-object v0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 331
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 332
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v7, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v5

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v7
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 336
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 338
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getFirstRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getFirstColumn()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastRow()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastColumn()I

    move-result v7

    move-object v3, v1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "firstRowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastRowIndex"    # I
    .param p4, "lastColumnIndex"    # I

    .line 327
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v6

    .line 328
    .local v6, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v7, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v7
.end method

.method public getColumnIndex()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    return v0
.end method

.method public getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 18
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "refStrPart1"    # Ljava/lang/String;
    .param p4, "refStrPart2"    # Ljava/lang/String;
    .param p5, "isA1Style"    # Z

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p5, :cond_f

    .line 201
    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v3

    .line 202
    .local v3, "se":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    if-nez v3, :cond_0

    .line 203
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 205
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v5, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v4, v5, v3}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    .line 208
    .local v4, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    iget-object v5, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    check-cast v5, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v5

    .line 210
    .local v5, "ssVersion":Lorg/apache/poi/ss/SpreadsheetVersion;
    invoke-static {v1, v5}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v12

    .line 211
    .local v12, "part1refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    sget-object v6, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_e

    const/4 v8, 0x2

    if-eq v6, v8, :cond_c

    .line 221
    const-string v6, "\'."

    const-string v9, "Unexpected reference classification of \'"

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v13, 0x3

    if-nez v2, :cond_3

    .line 223
    sget-object v7, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v13, :cond_2

    if-eq v7, v11, :cond_2

    if-ne v7, v10, :cond_1

    .line 228
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v6, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 229
    .local v6, "cr":Lorg/apache/poi/ss/util/CellReference;
    new-instance v7, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v8

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    invoke-direct {v7, v8, v9, v4}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v7

    .line 231
    .end local v6    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    :cond_2
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 233
    :cond_3
    invoke-static {v1, v5}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v14

    .line 234
    .local v14, "part2refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    sget-object v15, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v14}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-eq v15, v7, :cond_b

    if-eq v15, v8, :cond_a

    .line 242
    if-eq v14, v12, :cond_4

    .line 244
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 247
    :cond_4
    sget-object v7, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellReference$NameType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v13, :cond_8

    const/4 v8, 0x0

    if-eq v7, v11, :cond_6

    if-ne v7, v10, :cond_5

    move v6, v8

    .local v6, "lastCol":I
    move v7, v8

    .local v7, "firstCol":I
    move v9, v8

    .line 278
    .local v8, "firstRow":I
    .local v9, "lastRow":I
    new-instance v10, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v10, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 279
    .local v10, "cr":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v8

    .line 280
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    .line 281
    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v11, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 282
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v9

    .line 283
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    .line 284
    move v2, v6

    move v13, v7

    move v15, v8

    move/from16 v16, v9

    goto/16 :goto_0

    .line 247
    .end local v6    # "lastCol":I
    .end local v7    # "firstCol":I
    .end local v8    # "firstRow":I
    .end local v9    # "lastRow":I
    .end local v10    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_5
    const/4 v7, 0x0

    .local v7, "cr":Lorg/apache/poi/ss/util/CellReference;
    move v10, v8

    .local v10, "lastCol":I
    move v11, v8

    .local v11, "firstCol":I
    move v13, v8

    .line 286
    .restart local v8    # "firstRow":I
    .local v13, "lastRow":I
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 247
    .end local v7    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v8    # "firstRow":I
    .end local v10    # "lastCol":I
    .end local v11    # "firstCol":I
    .end local v13    # "lastRow":I
    :cond_6
    move v2, v8

    .local v2, "lastCol":I
    move v6, v8

    .local v6, "firstCol":I
    move v7, v8

    .line 264
    .local v7, "lastRow":I
    .restart local v8    # "firstRow":I
    const/4 v6, 0x0

    .line 265
    sget-object v9, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-virtual {v14, v9}, Lorg/apache/poi/ss/util/CellReference$NameType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 267
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v8

    .line 268
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v9

    .line 269
    .end local v7    # "lastRow":I
    .restart local v9    # "lastRow":I
    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    move v13, v6

    move v15, v8

    move/from16 v16, v9

    goto :goto_0

    .line 271
    .end local v2    # "lastCol":I
    .end local v8    # "firstRow":I
    .end local v9    # "lastRow":I
    :cond_7
    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    .line 272
    .restart local v2    # "lastCol":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v8

    .line 273
    .restart local v8    # "firstRow":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v9

    .line 275
    .restart local v9    # "lastRow":I
    move v13, v6

    move v15, v8

    move/from16 v16, v9

    goto :goto_0

    .line 249
    .end local v2    # "lastCol":I
    .end local v6    # "firstCol":I
    .end local v8    # "firstRow":I
    .end local v9    # "lastRow":I
    :cond_8
    const/4 v8, 0x0

    .line 250
    .restart local v8    # "firstRow":I
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-virtual {v14, v2}, Lorg/apache/poi/ss/util/CellReference$NameType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 252
    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v9

    .line 253
    .restart local v9    # "lastRow":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v7

    .line 254
    .local v7, "firstCol":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    move v13, v7

    move v15, v8

    move/from16 v16, v9

    .local v6, "lastCol":I
    goto :goto_0

    .line 257
    .end local v6    # "lastCol":I
    .end local v7    # "firstCol":I
    .end local v9    # "lastRow":I
    :cond_9
    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v9

    .line 258
    .restart local v9    # "lastRow":I
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v7

    .line 259
    .restart local v7    # "firstCol":I
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v6

    .line 261
    .restart local v6    # "lastCol":I
    move v2, v6

    move v13, v7

    move v15, v8

    move/from16 v16, v9

    .line 288
    .end local v6    # "lastCol":I
    .end local v7    # "firstCol":I
    .end local v8    # "firstRow":I
    .end local v9    # "lastRow":I
    .restart local v2    # "lastCol":I
    .local v13, "firstCol":I
    .local v15, "firstRow":I
    .local v16, "lastRow":I
    :goto_0
    new-instance v17, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-object/from16 v6, v17

    move v7, v15

    move v8, v13

    move/from16 v9, v16

    move v10, v2

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v17

    .line 238
    .end local v2    # "lastCol":I
    .end local v13    # "firstCol":I
    .end local v15    # "firstRow":I
    .end local v16    # "lastRow":I
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot evaluate \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Indirect evaluation of defined names not supported yet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_b
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 215
    .end local v14    # "part2refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    :cond_c
    iget-object v2, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    check-cast v2, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v6, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-interface {v2, v1, v6}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    .line 216
    .local v2, "nm":Lorg/apache/poi/ss/formula/EvaluationName;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 219
    iget-object v6, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6

    .line 217
    :cond_d
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Specified name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not a range as expected."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    .end local v2    # "nm":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_e
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 199
    .end local v3    # "se":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .end local v4    # "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .end local v5    # "ssVersion":Lorg/apache/poi/ss/SpreadsheetVersion;
    .end local v12    # "part1refType":Lorg/apache/poi/ss/util/CellReference$NameType;
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "R1C1 style not supported yet"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "nameXPtg"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .line 344
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 345
    .local v0, "externSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "workbookName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v2

    .line 356
    .local v2, "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    invoke-direct {p0, v2, v1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 347
    .end local v1    # "workbookName":Ljava/lang/String;
    .end local v2    # "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "nameXPxg"    # Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .line 359
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 360
    .local v0, "externSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "workbookName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v2

    .line 372
    .local v2, "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    invoke-direct {p0, v2, v1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 362
    .end local v1    # "workbookName":Ljava/lang/String;
    .end local v2    # "externName":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 316
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 317
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getColumn()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 320
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 322
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getColumn()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 312
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    .line 313
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 4

    .line 173
    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    .line 174
    .local v0, "sre":Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v1
.end method

.method public getRowIndex()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    return v0
.end method

.method public getSheetIndex()I
    .locals 1

    .line 418
    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public isSingleValue()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    return v0
.end method
