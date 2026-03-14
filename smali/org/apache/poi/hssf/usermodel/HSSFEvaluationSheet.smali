.class final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "HSSFEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0
    .param p1, "hs"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 34
    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 0

    .line 58
    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 41
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    .line 42
    .local v0, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return-object v1

    .line 45
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v2

    .line 46
    .local v2, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v2, :cond_1

    .line 47
    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    return-object v1
.end method

.method public getHSSFSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method
