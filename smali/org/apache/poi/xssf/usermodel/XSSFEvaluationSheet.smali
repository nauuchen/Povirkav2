.class final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "XSSFEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _cellCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;",
            "Lorg/apache/poi/ss/formula/EvaluationCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 40
    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 8
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    .line 60
    .local v1, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v2

    .line 61
    .local v2, "rowNum":I
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/Cell;

    .line 63
    .local v4, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    .line 64
    .local v5, "key":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    move-object v7, v4

    check-cast v7, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v6, v7, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    .line 65
    .local v6, "evalcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v4    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v5    # "key":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    .end local v6    # "evalcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    goto :goto_1

    .line 67
    .end local v1    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v2    # "rowNum":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .line 70
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    .line 71
    .local v0, "key":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 78
    .local v1, "evalcell":Lorg/apache/poi/ss/formula/EvaluationCell;
    if-nez v1, :cond_4

    .line 79
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 80
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 81
    return-object v3

    .line 83
    :cond_2
    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v4

    .line 84
    .local v4, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-nez v4, :cond_3

    .line 85
    return-object v3

    .line 87
    :cond_3
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    move-object v1, v3

    .line 88
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v4    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    :cond_4
    return-object v1
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method
