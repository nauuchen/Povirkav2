.class public Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
.super Ljava/lang/Object;
.source "ExcelNumberFormat.java"


# instance fields
.field private final format:Ljava/lang/String;

.field private final idx:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "format"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->idx:I

    .line 78
    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->format:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "nf":Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 59
    .local v3, "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    goto :goto_1

    .end local v3    # "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    :cond_1
    goto :goto_0

    .line 63
    .end local v1    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 64
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 65
    .local v1, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v0

    .line 67
    .end local v1    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    :cond_3
    return-object v0
.end method

.method public static from(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 3
    .param p0, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getIdx()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->idx:I

    return v0
.end method
