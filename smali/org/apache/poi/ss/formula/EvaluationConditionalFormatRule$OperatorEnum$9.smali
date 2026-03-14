.class final enum Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$9;
.super Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
.source "EvaluationConditionalFormatRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;)V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    .line 722
    .local p1, "cellValue":Ljava/lang/Comparable;, "TC;"
    .local p2, "v1":Ljava/lang/Comparable;, "TC;"
    .local p3, "v2":Ljava/lang/Comparable;, "TC;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
