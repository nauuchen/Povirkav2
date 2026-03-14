.class public enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.super Ljava/lang/Enum;
.source "DataValidationEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ValidationEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum ANY:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum DATE:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum DECIMAL:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum FORMULA:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum INTEGER:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum LIST:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum TEXT_LENGTH:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum TIME:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 271
    new-instance v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$1;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->ANY:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 276
    new-instance v1, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->INTEGER:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 286
    new-instance v3, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v5, "DECIMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->DECIMAL:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 287
    new-instance v5, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;

    const-string v7, "LIST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->LIST:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 332
    new-instance v7, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v9, "DATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->DATE:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 333
    new-instance v9, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v11, "TIME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->TIME:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 334
    new-instance v11, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$4;

    const-string v13, "TEXT_LENGTH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$4;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->TEXT_LENGTH:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 341
    new-instance v13, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;

    const-string v15, "FORMULA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->FORMULA:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    .line 270
    const/16 v15, 0x8

    new-array v15, v15, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->$VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$1;

    .line 270
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;
    .locals 4
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 420
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 421
    :catch_0
    move-exception v1

    .line 425
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 426
    .local v1, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_1

    .line 427
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 429
    :cond_1
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v2, :cond_2

    return-object v0

    .line 430
    :cond_2
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 431
    :cond_3
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v2, :cond_6

    .line 432
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 435
    :cond_4
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 433
    :cond_5
    :goto_0
    return-object v0

    .line 437
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formula \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' evaluates to something other than a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    .end local v1    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static isValid(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 2
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 448
    invoke-static {}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 270
    const-class v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    .locals 1

    .line 270
    sget-object v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->$VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    return-object v0
.end method


# virtual methods
.method protected isValidNumericCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 381
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 384
    .local v0, "value":Ljava/lang/Double;
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidNumericValue(Ljava/lang/Double;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result v1

    return v1
.end method

.method protected isValidNumericValue(Ljava/lang/Double;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 392
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;

    move-result-object v0

    .line 394
    .local v0, "t1":Ljava/lang/Double;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    const/4 v2, 0x0

    .line 396
    .local v2, "t2":Ljava/lang/Double;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 397
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;

    move-result-object v3

    move-object v2, v3

    .line 399
    if-nez v2, :cond_2

    return v1

    .line 401
    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;->values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;->isValid(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 402
    .end local v0    # "t1":Ljava/lang/Double;
    .end local v2    # "t2":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "context"    # Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidNumericCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result v0

    return v0
.end method
