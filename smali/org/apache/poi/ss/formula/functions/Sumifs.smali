.class public final Lorg/apache/poi/ss/formula/functions/Sumifs;
.super Lorg/apache/poi/ss/formula/functions/Baseifs;
.source "Sumifs.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Baseifs;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "x1"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 42
    invoke-super {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/Baseifs;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method protected hasInitialRange()Z
    .locals 1

    .line 56
    const/4 v0, 0x1

    return v0
.end method
