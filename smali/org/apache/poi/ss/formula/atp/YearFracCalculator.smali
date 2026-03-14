.class final Lorg/apache/poi/ss/formula/atp/YearFracCalculator;
.super Ljava/lang/Object;
.source "YearFracCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    }
.end annotation


# static fields
.field private static final DAYS_PER_LEAP_YEAR:I = 0x16e

.field private static final DAYS_PER_NORMAL_YEAR:I = 0x16d

.field private static final LONG_FEB_LEN:I = 0x1d

.field private static final LONG_MONTH_LEN:I = 0x1f

.field private static final MS_PER_DAY:I = 0x5265c00

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final SHORT_FEB_LEN:I = 0x1c

.field private static final SHORT_MONTH_LEN:I = 0x1e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static averageYearLength(II)D
    .locals 5
    .param p0, "startYear"    # I
    .param p1, "endYear"    # I

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "dayCount":I
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 266
    add-int/lit16 v0, v0, 0x16d

    .line 267
    invoke-static {v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_1
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    .line 272
    .local v1, "numberOfYears":D
    int-to-double v3, v0

    div-double/2addr v3, v1

    return-wide v3
.end method

.method public static basis0(II)D
    .locals 6
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .line 90
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v0

    .line 91
    .local v0, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v1

    .line 92
    .local v1, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    iget v2, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 93
    .local v2, "date1day":I
    iget v3, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 96
    .local v3, "date2day":I
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 97
    const/16 v2, 0x1e

    .line 98
    const/16 v3, 0x1e

    goto :goto_0

    .line 99
    :cond_0
    if-ne v2, v4, :cond_1

    .line 100
    const/16 v2, 0x1e

    goto :goto_0

    .line 101
    :cond_1
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_2

    if-ne v3, v4, :cond_2

    .line 102
    const/16 v3, 0x1e

    goto :goto_0

    .line 105
    :cond_2
    iget v4, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-static {v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    const/16 v2, 0x1e

    .line 108
    iget v4, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-ne v4, v5, :cond_3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    const/16 v3, 0x1e

    .line 113
    :cond_3
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D

    move-result-wide v4

    return-wide v4
.end method

.method public static basis1(II)D
    .locals 8
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .line 120
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v0

    .line 121
    .local v0, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v1

    .line 123
    .local v1, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isGreaterThanOneYear(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget v2, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v3, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->averageYearLength(II)D

    move-result-wide v2

    .local v2, "yearLength":D
    goto :goto_0

    .line 125
    .end local v2    # "yearLength":D
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->shouldCountFeb29(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-wide v2, 0x4076e00000000000L    # 366.0

    .restart local v2    # "yearLength":D
    goto :goto_0

    .line 128
    .end local v2    # "yearLength":D
    :cond_1
    const-wide v2, 0x4076d00000000000L    # 365.0

    .line 130
    .restart local v2    # "yearLength":D
    :goto_0
    iget-wide v4, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->tsMilliseconds:J

    iget-wide v6, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->tsMilliseconds:J

    invoke-static {v4, v5, v6, v7}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->dateDiff(JJ)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v2

    return-wide v4
.end method

.method public static basis2(II)D
    .locals 4
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .line 138
    sub-int v0, p1, p0

    int-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static basis3(DD)D
    .locals 4
    .param p0, "startDateVal"    # D
    .param p2, "endDateVal"    # D

    .line 145
    sub-double v0, p2, p0

    const-wide v2, 0x4076d00000000000L    # 365.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static basis4(II)D
    .locals 6
    .param p0, "startDateVal"    # I
    .param p1, "endDateVal"    # I

    .line 152
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v0

    .line 153
    .local v0, "startDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    move-result-object v1

    .line 154
    .local v1, "endDate":Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    iget v2, v0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 155
    .local v2, "date1day":I
    iget v3, v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    .line 159
    .local v3, "date2day":I
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_0

    .line 160
    const/16 v2, 0x1e

    .line 162
    :cond_0
    if-ne v3, v4, :cond_1

    .line 163
    const/16 v3, 0x1e

    .line 166
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D

    move-result-wide v4

    return-wide v4
.end method

.method public static calculate(DDI)D
    .locals 6
    .param p0, "pStartDateVal"    # D
    .param p2, "pEndDateVal"    # D
    .param p4, "basis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 53
    if-ltz p4, :cond_7

    const/4 v0, 0x5

    if-ge p4, v0, :cond_7

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 62
    .local v0, "startDateVal":I
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 63
    .local v1, "endDateVal":I
    if-ne v0, v1, :cond_0

    .line 65
    const-wide/16 v2, 0x0

    return-wide v2

    .line 68
    :cond_0
    if-le v0, v1, :cond_1

    .line 69
    move v2, v0

    .line 70
    .local v2, "temp":I
    move v0, v1

    .line 71
    move v1, v2

    .line 74
    .end local v2    # "temp":I
    :cond_1
    if-eqz p4, :cond_6

    const/4 v2, 0x1

    if-eq p4, v2, :cond_5

    const/4 v2, 0x2

    if-eq p4, v2, :cond_4

    const/4 v2, 0x3

    if-eq p4, v2, :cond_3

    const/4 v2, 0x4

    if-ne p4, v2, :cond_2

    .line 79
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis4(II)D

    move-result-wide v2

    return-wide v2

    .line 81
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot happen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_3
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis3(DD)D

    move-result-wide v2

    return-wide v2

    .line 77
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis2(II)D

    move-result-wide v2

    return-wide v2

    .line 76
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis1(II)D

    move-result-wide v2

    return-wide v2

    .line 75
    :cond_6
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->basis0(II)D

    move-result-wide v2

    return-wide v2

    .line 55
    .end local v0    # "startDateVal":I
    .end local v1    # "endDateVal":I
    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static calculateAdjusted(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;II)D
    .locals 4
    .param p0, "startDate"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "endDate"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p2, "date1day"    # I
    .param p3, "date2day"    # I

    .line 172
    iget v0, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v1, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x168

    iget v1, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v2, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 176
    .local v0, "dayCount":D
    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v2, v0, v2

    return-wide v2
.end method

.method private static createDate(I)Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .locals 2
    .param p0, "dayCount"    # I

    .line 311
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 312
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    .line 313
    new-instance v1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method private static dateDiff(JJ)I
    .locals 10
    .param p0, "startDateMS"    # J
    .param p2, "endDateMS"    # J

    .line 246
    sub-long v0, p2, p0

    .line 249
    .local v0, "msDiff":J
    const-wide/32 v2, 0x5265c00

    rem-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 250
    .local v3, "remainderHours":I
    if-nez v3, :cond_0

    .line 252
    nop

    .line 260
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    long-to-double v6, v0

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    add-double/2addr v6, v4

    double-to-int v2, v6

    return v2

    .line 257
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected date diff between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)I
    .locals 1
    .param p0, "date"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .line 187
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :pswitch_0
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x1d

    return v0

    .line 200
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 195
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 205
    :cond_0
    const/16 v0, 0x1c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isGreaterThanOneYear(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 4
    .param p0, "start"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "end"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .line 292
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v1, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 293
    return v2

    .line 295
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    if-eq v0, v3, :cond_1

    .line 296
    return v1

    .line 299
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-le v0, v3, :cond_2

    .line 300
    return v2

    .line 302
    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-ge v0, v3, :cond_3

    .line 303
    return v1

    .line 306
    :cond_3
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    iget v3, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    if-ge v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private static isLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 3
    .param p0, "date"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .line 180
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->getLastDayOfMonth(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isLeapYear(I)Z
    .locals 3
    .param p0, "i"    # I

    .line 277
    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    return v1

    .line 281
    :cond_0
    rem-int/lit16 v0, p0, 0x190

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 282
    return v2

    .line 285
    :cond_1
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_2

    .line 286
    return v1

    .line 288
    :cond_2
    return v2
.end method

.method private static shouldCountFeb29(Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;)Z
    .locals 5
    .param p0, "start"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;
    .param p1, "end"    # Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;

    .line 213
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 214
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    iget v4, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    if-ne v0, v4, :cond_0

    .line 216
    return v3

    .line 219
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    .line 224
    return v2

    .line 222
    :cond_1
    return v3

    .line 227
    :cond_2
    iget v0, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->year:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget v0, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->month:I

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_3

    .line 234
    return v3

    .line 232
    :cond_3
    nop

    .line 236
    iget v0, p1, Lorg/apache/poi/ss/formula/atp/YearFracCalculator$SimpleDate;->day:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 230
    :cond_5
    return v2

    .line 238
    :cond_6
    return v2
.end method
