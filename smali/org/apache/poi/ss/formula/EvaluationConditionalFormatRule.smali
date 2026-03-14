.class public Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
.super Ljava/lang/Object;
.source "EvaluationConditionalFormatRule.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;,
        Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;,
        Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
        ">;"
    }
.end annotation


# instance fields
.field private final formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

.field private final formattingIndex:I

.field private final formula1:Ljava/lang/String;

.field private final formula2:Ljava/lang/String;

.field private final meaningfulRegionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private final numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

.field private final operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field private final priority:I

.field private final regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

.field private final ruleIndex:I

.field private final sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private final type:Lorg/apache/poi/ss/usermodel/ConditionType;

.field private final workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/ConditionalFormatting;ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;I[Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 2
    .param p1, "workbookEvaluator"    # Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "formatting"    # Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .param p4, "formattingIndex"    # I
    .param p5, "rule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .param p6, "ruleIndex"    # I
    .param p7, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 107
    iput-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 108
    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    .line 109
    iput-object p5, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 110
    iput p4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    .line 111
    iput p6, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    .line 113
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->priority:I

    .line 115
    iput-object p7, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 116
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula1:Ljava/lang/String;

    .line 117
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula2:Ljava/lang/String;

    .line 118
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    .line 120
    invoke-static {}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->values()[Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    move-result-object v0

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getComparisonOperation()B

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    .line 121
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->type:Lorg/apache/poi/ss/usermodel/ConditionType;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    return-object v0
.end method

.method private checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 20
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "ref"    # Lorg/apache/poi/ss/util/CellReference;
    .param p3, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 399
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    move-result-object v5

    .line 400
    .local v5, "filterType":Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 401
    return v6

    .line 404
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    move-result-object v7

    .line 410
    .local v7, "cv":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    sget-object v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$5;->$SwitchMap$org$apache$poi$ss$usermodel$ConditionFilterType:[I

    invoke-virtual {v5}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    move-object v2, v0

    .local v2, "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v3, v0

    .local v3, "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v6, v0

    .local v6, "comp":Ljava/lang/Double;
    move-object v10, v0

    .local v10, "val":Ljava/lang/Double;
    move-wide v11, v8

    .line 589
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .local v8, "stdDev":D
    .local v11, "avg":D
    const/4 v13, 0x0

    return v13

    .line 410
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v2    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v3    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v6    # "comp":Ljava/lang/Double;
    .end local v8    # "stdDev":D
    .end local v10    # "val":Ljava/lang/Double;
    .end local v11    # "avg":D
    :pswitch_0
    move-object v0, v10

    .local v0, "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .local v6, "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v11, v10

    .local v11, "comp":Ljava/lang/Double;
    move-object v12, v10

    .local v12, "val":Ljava/lang/Double;
    move-wide v13, v8

    .line 587
    .restart local v8    # "stdDev":D
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .local v13, "avg":D
    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v15

    return v15

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "comp":Ljava/lang/Double;
    .end local v12    # "val":Ljava/lang/Double;
    .end local v13    # "avg":D
    :pswitch_1
    move-object v0, v10

    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v12, v10

    .local v12, "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v13, v10

    .local v13, "comp":Ljava/lang/Double;
    move-object v14, v10

    .local v14, "val":Ljava/lang/Double;
    move-wide v15, v8

    .line 584
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .local v15, "avg":D
    if-eqz v2, :cond_2

    sget-object v6, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v6}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v12    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v13    # "comp":Ljava/lang/Double;
    .end local v14    # "val":Ljava/lang/Double;
    .end local v15    # "avg":D
    :pswitch_2
    move-object v0, v10

    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .restart local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v12, v10

    .local v12, "comp":Ljava/lang/Double;
    move-object v13, v10

    .local v13, "val":Ljava/lang/Double;
    move-wide v14, v8

    .line 582
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .local v14, "avg":D
    if-eqz v2, :cond_3

    sget-object v11, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v11}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    return v16

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v12    # "comp":Ljava/lang/Double;
    .end local v13    # "val":Ljava/lang/Double;
    .end local v14    # "avg":D
    :pswitch_3
    move-object v6, v10

    .local v6, "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v11, v10

    .local v11, "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v12, v10

    .restart local v12    # "comp":Ljava/lang/Double;
    move-object v13, v10

    .restart local v13    # "val":Ljava/lang/Double;
    move-wide v14, v8

    .line 574
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .restart local v14    # "avg":D
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v17, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    return v16

    .line 577
    .end local v0    # "v":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    return v16

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v12    # "comp":Ljava/lang/Double;
    .end local v13    # "val":Ljava/lang/Double;
    .end local v14    # "avg":D
    :pswitch_4
    move-object v6, v10

    .restart local v6    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v11, v10

    .restart local v11    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v12, v10

    .restart local v12    # "comp":Ljava/lang/Double;
    move-object v13, v10

    .restart local v13    # "val":Ljava/lang/Double;
    move-wide v14, v8

    .line 565
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .restart local v14    # "avg":D
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v17, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v16, 0x1

    :goto_5
    return v16

    .line 568
    .end local v0    # "v":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    return v16

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v12    # "comp":Ljava/lang/Double;
    .end local v13    # "val":Ljava/lang/Double;
    .end local v14    # "avg":D
    :pswitch_5
    move-object v0, v10

    .local v0, "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .local v6, "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v11, v10

    .local v11, "comp":Ljava/lang/Double;
    move-object v12, v10

    .local v12, "val":Ljava/lang/Double;
    move-wide v13, v8

    .line 562
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .local v13, "avg":D
    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v15

    return v15

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "comp":Ljava/lang/Double;
    .end local v12    # "val":Ljava/lang/Double;
    .end local v13    # "avg":D
    :pswitch_6
    move-object v0, v10

    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .restart local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v11, v10

    .restart local v11    # "comp":Ljava/lang/Double;
    move-object v12, v10

    .restart local v12    # "val":Ljava/lang/Double;
    move-wide v13, v8

    .line 559
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .restart local v13    # "avg":D
    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v15

    return v15

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "comp":Ljava/lang/Double;
    .end local v12    # "val":Ljava/lang/Double;
    .end local v13    # "avg":D
    :pswitch_7
    move-object v0, v10

    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .restart local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v11, v10

    .restart local v11    # "comp":Ljava/lang/Double;
    move-object v12, v10

    .restart local v12    # "val":Ljava/lang/Double;
    move-wide v13, v8

    .line 556
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .restart local v13    # "avg":D
    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v15

    return v15

    .line 410
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "comp":Ljava/lang/Double;
    .end local v12    # "val":Ljava/lang/Double;
    .end local v13    # "avg":D
    :pswitch_8
    move-object v0, v10

    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    move-object v6, v10

    .restart local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    move-object v11, v10

    .restart local v11    # "comp":Ljava/lang/Double;
    move-object v12, v10

    .restart local v12    # "val":Ljava/lang/Double;
    move-wide v13, v8

    .line 553
    .restart local v8    # "stdDev":D
    .restart local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .restart local v13    # "avg":D
    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v15

    return v15

    .line 496
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v6    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v8    # "stdDev":D
    .end local v10    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v11    # "comp":Ljava/lang/Double;
    .end local v12    # "val":Ljava/lang/Double;
    .end local v13    # "avg":D
    :pswitch_9
    iget-object v0, v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;

    move-result-object v0

    .line 499
    .restart local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    new-instance v6, Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;

    invoke-direct {v8, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V

    const/4 v9, 0x0

    invoke-direct {v1, v4, v9, v8}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 520
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getValue()Ljava/lang/Double;

    move-result-object v8

    goto :goto_6

    :cond_7
    move-object v8, v10

    .line 521
    .local v8, "val":Ljava/lang/Double;
    :goto_6
    if-nez v8, :cond_8

    .line 522
    const/4 v9, 0x0

    return v9

    .line 525
    :cond_8
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v11}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 526
    .local v11, "avg":D
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v13}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 534
    .local v13, "stdDev":D
    new-instance v9, Ljava/lang/Double;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getStdDev()I

    move-result v15

    if-lez v15, :cond_a

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getAboveAverage()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, -0x1

    :goto_7
    move-wide/from16 v18, v11

    .end local v11    # "avg":D
    .local v18, "avg":D
    int-to-double v10, v15

    mul-double v10, v10, v13

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getStdDev()I

    move-result v12

    int-to-double v2, v12

    mul-double v10, v10, v2

    add-double v11, v18, v10

    goto :goto_8

    .end local v18    # "avg":D
    .restart local v11    # "avg":D
    :cond_a
    move-wide/from16 v18, v11

    .end local v11    # "avg":D
    .restart local v18    # "avg":D
    :goto_8
    invoke-direct {v9, v11, v12}, Ljava/lang/Double;-><init>(D)V

    move-object v2, v9

    .line 536
    .local v2, "comp":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 537
    .restart local v3    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getAboveAverage()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 538
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getEqualAverage()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 539
    sget-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    goto :goto_9

    .line 541
    :cond_b
    sget-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->GREATER_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    goto :goto_9

    .line 544
    :cond_c
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getEqualAverage()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 545
    sget-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    goto :goto_9

    .line 547
    :cond_d
    sget-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->LESS_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    .line 550
    :goto_9
    if-eqz v3, :cond_e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v2, v9}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v16, 0x1

    goto :goto_a

    :cond_e
    const/16 v16, 0x0

    :goto_a
    return v16

    .line 472
    .end local v0    # "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .end local v2    # "comp":Ljava/lang/Double;
    .end local v3    # "op":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    .end local v8    # "val":Ljava/lang/Double;
    .end local v13    # "stdDev":D
    .end local v18    # "avg":D
    :pswitch_a
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 447
    :pswitch_b
    const/4 v2, 0x1

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$2;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$2;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V

    invoke-direct {v1, v4, v2, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 417
    :pswitch_c
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result v0

    if-nez v0, :cond_f

    .line 418
    const/4 v2, 0x0

    return v2

    .line 421
    :cond_f
    const/4 v2, 0x0

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V

    invoke-direct {v1, v4, v2, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 8
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 378
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 381
    .local v0, "comp":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 382
    return v2

    .line 384
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 385
    return v3

    .line 387
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_2

    .line 388
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    return v1

    .line 392
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_4

    .line 393
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 395
    :cond_4
    return v3
.end method

.method private checkValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 9
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 322
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 331
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 333
    .local v1, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula2()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "f2":Ljava/lang/String;
    const/4 v3, 0x0

    .line 335
    .local v3, "eval2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 336
    iget-object v4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v5

    invoke-virtual {v4, v2, v5, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 340
    :cond_1
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 341
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_2

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v4, :cond_4

    .line 342
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v4, v6, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0

    .line 344
    :cond_4
    return v0

    .line 346
    :cond_5
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 347
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_6

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_8

    .line 348
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v4, v6, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0

    .line 350
    :cond_8
    return v0

    .line 352
    :cond_9
    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 353
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_c

    if-eqz v3, :cond_a

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_c

    .line 354
    :cond_a
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v4

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v4, v6, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0

    .line 356
    :cond_c
    return v0

    .line 360
    :cond_d
    return v0

    .line 328
    .end local v1    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "f2":Ljava/lang/String;
    .end local v3    # "eval2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_e
    :goto_3
    return v0
.end method

.method private getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 629
    if-eqz p1, :cond_5

    .line 630
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 631
    .local v0, "type":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 633
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_5

    .line 636
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 634
    :cond_3
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 632
    :cond_4
    :goto_1
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    new-instance v2, Ljava/lang/Double;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    return-object v1

    .line 639
    .end local v0    # "type":Lorg/apache/poi/ss/usermodel/CellType;
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;)Ljava/util/Set;
    .locals 8
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "withText"    # Z
    .param p3, "func"    # Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            "Z",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 602
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    if-eqz v0, :cond_0

    .line 603
    return-object v0

    .line 606
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    .local v1, "allValues":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .local v2, "r":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 609
    iget-object v3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v3, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 610
    .local v3, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v3, :cond_1

    .line 611
    goto :goto_2

    .line 613
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    .local v4, "c":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 614
    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v5

    .line 615
    .local v5, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    move-result-object v6

    .line 616
    .local v6, "cv":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    if-eqz v6, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 617
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v5    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v6    # "cv":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    .end local v3    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "c":I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    .end local v2    # "r":I
    :cond_5
    invoke-interface {p3, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;->evaluate(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 623
    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-object v0
.end method

.method private unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 364
    move-object v0, p1

    .line 366
    .local v0, "comp":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 367
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 368
    .local v1, "ref":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 369
    .end local v1    # "ref":Lorg/apache/poi/ss/formula/eval/RefEval;
    goto :goto_0

    .line 370
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 68
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 239
    return v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getPriority()I

    move-result v1

    .line 243
    .local v1, "x":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getPriority()I

    move-result v2

    .line 245
    .local v2, "y":I
    if-ge v1, v2, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 246
    if-eqz v0, :cond_3

    .line 247
    return v0

    .line 250
    :cond_3
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 251
    if-eqz v0, :cond_4

    .line 252
    return v0

    .line 254
    :cond_4
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 215
    return v0

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    return v0

    .line 220
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 221
    .local v1, "r":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getFormatting()Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    return-object v0
.end method

.method public getFormattingIndex()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    return v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula1:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula2:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    return-object v0
.end method

.method public getOperator()Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->priority:I

    return v0
.end method

.method public getRegions()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    return-object v0
.end method

.method public getRuleIndex()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method public getType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->type:Lorg/apache/poi/ss/usermodel/ConditionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 259
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 260
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    add-int/2addr v1, v2

    .line 261
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    add-int/2addr v0, v2

    .line 262
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method matches(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 6
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellReference;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .local v1, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 273
    .local v4, "r":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    move-object v0, v4

    .line 275
    goto :goto_1

    .line 272
    .end local v4    # "r":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 281
    return v1

    .line 284
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v2

    .line 288
    .local v2, "ruleType":Lorg/apache/poi/ss/usermodel/ConditionType;
    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionType;->ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 294
    :cond_3
    const/4 v3, 0x0

    .line 295
    .local v3, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 296
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v4, :cond_4

    .line 297
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    .line 300
    :cond_4
    sget-object v5, Lorg/apache/poi/ss/usermodel/ConditionType;->CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 302
    if-nez v3, :cond_5

    return v1

    .line 303
    :cond_5
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v1

    return v1

    .line 305
    :cond_6
    sget-object v5, Lorg/apache/poi/ss/usermodel/ConditionType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 306
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v1

    return v1

    .line 308
    :cond_7
    sget-object v5, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 309
    invoke-direct {p0, v3, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v1

    return v1

    .line 313
    :cond_8
    return v1

    .line 291
    .end local v3    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_9
    :goto_2
    const/4 v1, 0x1

    return v1
.end method
