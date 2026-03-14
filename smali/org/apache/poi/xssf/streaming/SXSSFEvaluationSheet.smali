.class final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "SXSSFEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 33
    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    .line 60
    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 40
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    .line 41
    .local v0, "row":Lorg/apache/poi/xssf/streaming/SXSSFRow;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 42
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getLastFlushedRowNum()I

    move-result v2

    if-le p1, v2, :cond_0

    .line 45
    return-object v1

    .line 43
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;

    invoke-direct {v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;-><init>(I)V

    throw v1

    .line 47
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v2

    .line 48
    .local v2, "cell":Lorg/apache/poi/xssf/streaming/SXSSFCell;
    if-nez v2, :cond_2

    .line 49
    return-object v1

    .line 51
    :cond_2
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V

    return-object v1
.end method

.method public getSXSSFSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object v0
.end method
