.class Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;
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

    .line 472
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$3;->this$0:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

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

    .line 475
    .local p1, "allValues":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    move-object v0, p1

    .line 476
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 478
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v1, "dup":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 481
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    .line 483
    .local v3, "v":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v2, v2, 0x1

    .line 480
    .end local v3    # "v":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method
