.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum$5;
.super Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;
.source "DataValidationEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 1
    .param p1, "cellValue"    # Ljava/lang/Double;
    .param p2, "v1"    # Ljava/lang/Double;
    .param p3, "v2"    # Ljava/lang/Double;

    .line 480
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
