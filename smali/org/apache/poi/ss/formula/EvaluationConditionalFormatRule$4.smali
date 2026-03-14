.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;
.super Ljava/lang/Object;
.source "EvaluationConditionalFormatRule.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$4;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    .line 502
    .local p1, "allValues":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    move-object v0, p1

    .line 503
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    const-wide/16 v1, 0x0

    .line 504
    .local v1, "total":D
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 505
    .local v3, "pop":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 506
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    .line 507
    .local v5, "v":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 508
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v5}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$100(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v6, v3, v4

    .line 505
    .end local v5    # "v":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 512
    .local v4, "avgSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    new-instance v7, Ljava/lang/Double;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v9, 0x0

    if-nez v8, :cond_1

    move-wide v11, v9

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    int-to-double v11, v8

    div-double v11, v1, v11

    :goto_1
    invoke-direct {v7, v11, v12}, Ljava/lang/Double;-><init>(D)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6, v6}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v9

    :goto_2
    move-wide v5, v9

    .line 515
    .local v5, "stdDev":D
    new-instance v7, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v7, v9, v8}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    return-object v4
.end method
