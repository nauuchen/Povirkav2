.class public Lorg/apache/poi/ss/formula/DataValidationEvaluator;
.super Ljava/lang/Object;
.source "DataValidationEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;,
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;,
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    }
.end annotation


# instance fields
.field private final validations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/DataValidation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workbook:Lorg/apache/poi/ss/usermodel/Workbook;

.field private final workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;)V
    .locals 1
    .param p1, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "provider"    # Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    .line 79
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 80
    return-void
.end method

.method protected static getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v0

    .line 186
    .local v0, "val":Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 188
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "formula":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/eval/ValueEval;>;"
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 194
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 195
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_1

    new-instance v7, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v7, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    goto :goto_2

    .line 197
    :cond_3
    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateList(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 203
    .local v3, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v4, :cond_4

    .line 204
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 205
    .local v4, "twod":Lorg/apache/poi/ss/formula/TwoDEval;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 206
    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 207
    .local v6, "cellValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v6    # "cellValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 211
    .end local v3    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "twod":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v5    # "i":I
    :cond_4
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getValidations(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 3
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/DataValidation;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    .local v0, "dvs":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/ss/usermodel/DataValidation;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getDataValidations()Ljava/util/List;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-object v0
.end method

.method public static isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z
    .locals 2
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 258
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 259
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    if-eq v0, p1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public clearAllCachedValues()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    return-void
.end method

.method public getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    .locals 11
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellReference;

    .line 139
    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    .line 140
    .local v0, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidations(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "dataValidations":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/ss/usermodel/DataValidation;>;"
    if-nez v2, :cond_1

    return-object v1

    .line 143
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/DataValidation;

    .line 144
    .local v4, "dv":Lorg/apache/poi/ss/usermodel/DataValidation;
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/DataValidation;->getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v5

    .line 145
    .local v5, "regions":Lorg/apache/poi/ss/util/CellRangeAddressList;
    if-nez v5, :cond_2

    return-object v1

    .line 147
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    .local v6, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 148
    .local v9, "range":Lorg/apache/poi/ss/util/CellRangeAddressBase;
    invoke-virtual {v9, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    new-instance v1, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    invoke-direct {v1, v4, p0, v9, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;-><init>(Lorg/apache/poi/ss/usermodel/DataValidation;Lorg/apache/poi/ss/formula/DataValidationEvaluator;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v1

    .line 147
    .end local v9    # "range":Lorg/apache/poi/ss/util/CellRangeAddressBase;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 152
    .end local v4    # "dv":Lorg/apache/poi/ss/usermodel/DataValidation;
    .end local v5    # "regions":Lorg/apache/poi/ss/util/CellRangeAddressList;
    .end local v6    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_4
    goto :goto_0

    .line 153
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v1
.end method

.method public getValidationForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellReference;

    .line 123
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object v0

    .line 124
    .local v0, "vc":Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getValidationValuesForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellReference;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object v0

    .line 175
    .local v0, "context":Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 177
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method

.method public isValidCell(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 4
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object v0

    .line 230
    .local v0, "context":Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    .line 237
    .local v1, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v1, :cond_2

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValid(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result v2

    return v2

    .line 243
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/DataValidation;->getEmptyCellAllowed()Z

    move-result v2

    return v2
.end method
