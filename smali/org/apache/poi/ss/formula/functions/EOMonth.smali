.class public Lorg/apache/poi/ss/formula/functions/EOMonth;
.super Ljava/lang/Object;
.source "EOMonth.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/functions/EOMonth;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EOMonth;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 50
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 56
    .local v2, "startDateAsNumber":D
    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v5

    double-to-int v5, v5

    .line 59
    .local v5, "months":I
    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-ltz v8, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    .line 60
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 63
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v6

    .line 65
    .local v6, "startDate":Ljava/util/Date;
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v7

    .line 66
    .local v7, "cal":Ljava/util/Calendar;
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->clear(I)V

    .line 68
    const/16 v8, 0xb

    invoke-virtual {v7, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 69
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->clear(I)V

    .line 70
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->clear(I)V

    .line 71
    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->clear(I)V

    .line 73
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 74
    const/4 v0, 0x5

    invoke-virtual {v7, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 77
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    .end local v2    # "startDateAsNumber":D
    .end local v5    # "months":I
    .end local v6    # "startDate":Ljava/util/Date;
    .end local v7    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
