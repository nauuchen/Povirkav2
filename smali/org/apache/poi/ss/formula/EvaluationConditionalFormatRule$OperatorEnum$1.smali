.class final enum Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$1;
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

    .line 662
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

    .line 666
    .local p1, "cellValue":Ljava/lang/Comparable;, "TC;"
    .local p2, "v1":Ljava/lang/Comparable;, "TC;"
    .local p3, "v2":Ljava/lang/Comparable;, "TC;"
    const/4 v0, 0x0

    return v0
.end method
