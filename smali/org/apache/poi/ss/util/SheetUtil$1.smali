.class final Lorg/apache/poi/ss/util/SheetUtil$1;
.super Ljava/lang/Object;
.source "SheetUtil.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FormulaEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/SheetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    .line 73
    return-void
.end method

.method public evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public evaluateAll()V
    .locals 0

    .line 91
    return-void
.end method

.method public evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 95
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    .line 104
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 77
    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 75
    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 79
    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 87
    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .line 89
    return-void
.end method

.method public setupReferencedWorkbooks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "workbooks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;>;"
    return-void
.end method
