.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;
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

    .line 421
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/util/Set;
    .locals 5
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

    .line 424
    .local p1, "allValues":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    move-object v0, p1

    .line 425
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;

    move-result-object v1

    .line 427
    .local v1, "conf":Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getBottom()Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 433
    :goto_0
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getRank()J

    move-result-wide v2

    long-to-int v3, v2

    .line 434
    .local v3, "limit":I
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getPercent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int v2, v2, v3

    div-int/lit8 v3, v2, 0x64

    .line 437
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 438
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 441
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method
