.class public Lorg/apache/poi/ss/usermodel/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    }
.end annotation


# static fields
.field private static final BAD_DATE:I = -0x1

.field public static final DAY_MILLISECONDS:J = 0x5265c00L

.field public static final HOURS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final date_ptrn1:Ljava/util/regex/Pattern;

.field private static final date_ptrn2:Ljava/util/regex/Pattern;

.field private static final date_ptrn3a:Ljava/util/regex/Pattern;

.field private static final date_ptrn3b:Ljava/util/regex/Pattern;

.field private static final date_ptrn4:Ljava/util/regex/Pattern;

.field private static final date_ptrn5:Ljava/util/regex/Pattern;

.field private static lastCachedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatIndex:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatString:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "^\\[\\$\\-.*?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "^\\[[a-zA-Z]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "[yYmMdDhHsS]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "^[\\[\\]yYmMdDhHsS\\-T/\u5e74\u6708\u65e5,. :\"\\\\]+0*[ampAMP/]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "^\\[([hH]+|[mM]+|[sS]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "^\\[DBNum(1|2|3)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    .line 331
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    .line 336
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    .line 337
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected static absoluteDay(Ljava/util/Calendar;Z)I
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 594
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->daysInPriorYears(IZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static cache(Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "formatIndex"    # I
    .param p2, "cached"    # Z

    .line 346
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 347
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 348
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public static convertTime(Ljava/lang/String;)D
    .locals 3
    .param p0, "timeStr"    # Ljava/lang/String;

    .line 651
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->convertTimeInternal(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad time format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' expected \'HH:MM\' or \'HH:MM:SS\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static convertTimeInternal(Ljava/lang/String;)D
    .locals 13
    .param p0, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 660
    .local v0, "len":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 663
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move-object v2, v5

    .line 668
    .local v2, "secStr":Ljava/lang/String;
    aget-object v2, v1, v3

    goto :goto_0

    .line 666
    .end local v2    # "secStr":Ljava/lang/String;
    :cond_0
    move-object v2, v5

    .line 670
    .restart local v2    # "secStr":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 2 or 3 fields but got ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    .end local v2    # "secStr":Ljava/lang/String;
    :cond_1
    const-string v2, "00"

    .line 672
    .restart local v2    # "secStr":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 673
    .local v3, "hourStr":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 674
    .local v4, "minStr":Ljava/lang/String;
    const/16 v5, 0x18

    const-string v6, "hour"

    invoke-static {v3, v6, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 675
    .local v5, "hours":I
    const-string v6, "minute"

    const/16 v7, 0x3c

    invoke-static {v4, v6, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 676
    .local v6, "minutes":I
    const-string v8, "second"

    invoke-static {v2, v8, v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 678
    .local v8, "seconds":I
    mul-int/lit8 v9, v5, 0x3c

    add-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v8

    int-to-double v9, v9

    .line 679
    .local v9, "totalSeconds":D
    const-wide v11, 0x40f5180000000000L    # 86400.0

    div-double v11, v9, v11

    return-wide v11

    .line 661
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "secStr":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v4    # "minStr":Ljava/lang/String;
    .end local v5    # "hours":I
    .end local v6    # "minutes":I
    .end local v8    # "seconds":I
    .end local v9    # "totalSeconds":D
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v2, "Bad length"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .line 625
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 627
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 628
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 629
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 630
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 631
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 633
    return-object p0
.end method

.method private static daysInPriorYears(IZ)I
    .locals 5
    .param p0, "yr"    # I
    .param p1, "use1904windowing"    # Z

    .line 609
    const/16 v0, 0x76c

    if-nez p1, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v1, 0x770

    if-eqz p1, :cond_2

    if-lt p0, v1, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'year\' must be 1900 or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2
    :goto_0
    add-int/lit8 v2, p0, -0x1

    .line 614
    .local v2, "yr1":I
    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v4, v2, 0x64

    sub-int/2addr v3, v4

    div-int/lit16 v4, v2, 0x190

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x1cc

    .line 619
    .local v3, "leapDays":I
    if-eqz p1, :cond_3

    const/16 v0, 0x770

    :cond_3
    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x16d

    add-int/2addr v0, v3

    return v0
.end method

.method public static getExcelDate(Ljava/util/Calendar;Z)D
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 96
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;)D
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;Z)D
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "use1904windowing"    # Z

    .line 80
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "calStart":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 82
    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v1

    return-wide v1
.end method

.method public static getJavaCalendar(D)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D

    .line 261
    const/4 v0, 0x0

    check-cast v0, Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZ)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 273
    const/4 v0, 0x0

    check-cast v0, Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;
    .locals 5
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "roundSeconds"    # Z

    .line 312
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 316
    .local v0, "wholeDays":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide v3, 0x4194997000000000L    # 8.64E7

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 318
    .local v1, "millisecondsInDay":I
    if-eqz p3, :cond_1

    .line 319
    invoke-static {p3}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 321
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 323
    .restart local v2    # "calendar":Ljava/util/Calendar;
    :goto_0
    invoke-static {v2, v0, v1, p2, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    .line 324
    return-object v2
.end method

.method public static getJavaCalendarUTC(DZ)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 286
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(D)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # D

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZ)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # D
    .param p2, "use1904windowing"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "roundSeconds"    # Z

    .line 202
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 203
    .local v0, "calendar":Ljava/util/Calendar;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static internalGetExcelDate(Ljava/util/Calendar;Z)D
    .locals 10
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 99
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x76c

    if-lt v1, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x770

    if-ge v0, v1, :cond_2

    .line 102
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 111
    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 116
    .local v0, "fraction":D
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 118
    .local v2, "calStart":Ljava/util/Calendar;
    invoke-static {v2, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(Ljava/util/Calendar;Z)I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v3, v0

    .line 120
    .local v3, "value":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_3

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v9, v3, v7

    if-ltz v9, :cond_3

    .line 121
    add-double/2addr v3, v5

    goto :goto_0

    .line 122
    :cond_3
    if-eqz p1, :cond_4

    .line 123
    sub-double/2addr v3, v5

    .line 126
    :cond_4
    :goto_0
    return-wide v3
.end method

.method public static isADateFormat(ILjava/lang/String;)Z
    .locals 10
    .param p0, "formatIndex"    # I
    .param p1, "formatString"    # Ljava/lang/String;

    .line 388
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 390
    return v1

    .line 394
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 399
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCached(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 403
    :cond_2
    move-object v2, p1

    .line 424
    .local v2, "fs":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 425
    .local v3, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 426
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x3b

    if-ge v5, v3, :cond_6

    .line 427
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 428
    .local v7, "c":C
    add-int/lit8 v8, v3, -0x1

    if-ge v5, v8, :cond_5

    .line 429
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 430
    .local v8, "nc":C
    const/16 v9, 0x5c

    if-ne v7, v9, :cond_4

    .line 431
    const/16 v6, 0x20

    if-eq v8, v6, :cond_3

    if-eq v8, v9, :cond_3

    packed-switch v8, :pswitch_data_0

    .line 438
    goto :goto_1

    :cond_3
    :pswitch_0
    goto :goto_2

    .line 440
    :cond_4
    if-ne v7, v6, :cond_5

    const/16 v6, 0x40

    if-ne v8, v6, :cond_5

    .line 441
    add-int/lit8 v5, v5, 0x1

    .line 443
    goto :goto_2

    .line 446
    .end local v8    # "nc":C
    :cond_5
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    .end local v7    # "c":C
    :goto_2
    add-int/2addr v5, v1

    goto :goto_0

    .line 448
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    sget-object v5, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 452
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 453
    return v1

    .line 457
    :cond_7
    sget-object v5, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    sget-object v5, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    sget-object v5, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 468
    .local v5, "separatorIndex":I
    if-lez v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_8

    .line 469
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_8
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_9

    .line 475
    return v0

    .line 482
    :cond_9
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 483
    .local v0, "result":Z
    invoke-static {p1, p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    .line 484
    return v0

    .line 395
    .end local v0    # "result":Z
    .end local v2    # "fs":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "separatorIndex":I
    :cond_a
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z
    .locals 2
    .param p0, "numFmt"    # Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    .line 366
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isCached(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "formatIndex"    # I

    .line 340
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, "cachedFormatString":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 1
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 523
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result v0

    return v0
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z
    .locals 5
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 539
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 540
    :cond_0
    const/4 v1, 0x0

    .line 542
    .local v1, "bDate":Z
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    .line 543
    .local v2, "d":D
    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v4

    .line 545
    .local v4, "nf":Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    if-nez v4, :cond_1

    return v0

    .line 546
    :cond_1
    invoke-static {v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z

    move-result v1

    .line 548
    .end local v4    # "nf":Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    :cond_2
    return v1
.end method

.method public static isCellInternalDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 5
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 560
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 563
    .local v0, "bDate":Z
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    .line 564
    .local v1, "d":D
    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    .line 566
    .local v3, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v4

    .line 567
    .local v4, "i":I
    invoke-static {v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    .line 569
    .end local v3    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v4    # "i":I
    :cond_1
    return v0
.end method

.method public static isInternalDateFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .line 493
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 510
    const/4 v0, 0x0

    return v0

    .line 508
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidExcelDate(D)Z
    .locals 3
    .param p0, "value"    # D

    .line 582
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "strVal"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "rangeMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 711
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p0, "strVal"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lowerLimit"    # I
    .param p3, "upperLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 717
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .local v0, "result":I
    nop

    .line 721
    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    .line 725
    return v0

    .line 722
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is outside the allowable range(0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 719
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v1, "result":I
    new-instance v2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad int format \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 688
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad time format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected \'YYYY/MM/DD\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 700
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "yearStr":Ljava/lang/String;
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "monthStr":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "dayStr":Ljava/lang/String;
    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    const-string/jumbo v5, "year"

    invoke-static {v0, v5, v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 704
    .local v3, "year":I
    const/16 v4, 0xc

    const-string v5, "month"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 705
    .local v4, "month":I
    const/16 v5, 0x1f

    const-string v7, "day"

    invoke-static {v1, v7, v6, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    .line 707
    .local v5, "day":I
    add-int/lit8 v6, v4, -0x1

    invoke-static {v3, v6, v5}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object v6

    .line 708
    .local v6, "cal":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    return-object v7

    .line 697
    .end local v0    # "yearStr":Ljava/lang/String;
    .end local v1    # "dayStr":Ljava/lang/String;
    .end local v2    # "monthStr":Ljava/lang/String;
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v6    # "cal":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v1, "Bad length"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCalendar(Ljava/util/Calendar;IIZZ)V
    .locals 9
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "wholeDays"    # I
    .param p2, "millisecondsInDay"    # I
    .param p3, "use1904windowing"    # Z
    .param p4, "roundSeconds"    # Z

    .line 231
    const/16 v0, 0x76c

    .line 232
    .local v0, "startYear":I
    const/4 v1, -0x1

    .line 233
    .local v1, "dayAdjust":I
    if-eqz p3, :cond_0

    .line 234
    const/16 v0, 0x770

    .line 235
    const/4 v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const/16 v2, 0x3d

    if-ge p1, v2, :cond_1

    .line 240
    const/4 v1, 0x0

    .line 242
    :cond_1
    :goto_0
    const/4 v4, 0x0

    add-int v5, p1, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 243
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 244
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 245
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 247
    :cond_2
    if-eqz p4, :cond_3

    .line 248
    const/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 249
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 251
    :cond_3
    return-void
.end method
