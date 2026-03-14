.class public Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;
.super Ljava/text/Format;
.source "ExcelGeneralNumberFormat.java"


# static fields
.field private static final TO_10_SF:Ljava/math/MathContext;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final decimalFormat:Ljava/text/DecimalFormat;

.field private final decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private final integerFormat:Ljava/text/DecimalFormat;

.field private final scientificFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/math/MathContext;

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->TO_10_SF:Ljava/math/MathContext;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 48
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 50
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#####E0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->scientificFormat:Ljava/text/DecimalFormat;

    .line 51
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 52
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    .line 53
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 54
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##########"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalFormat:Ljava/text/DecimalFormat;

    .line 55
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 56
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 60
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 61
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 62
    .local v0, "value":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 70
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 71
    .local v2, "abs":D
    const-wide v4, 0x42374876e8000000L    # 1.0E11

    cmpl-double v6, v2, v4

    if-gez v6, :cond_4

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_3

    const-wide v4, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->TO_10_SF:Ljava/math/MathContext;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 82
    .local v4, "rounded":D
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v4, v5, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v6

    return-object v6

    .line 75
    .end local v4    # "rounded":D
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    return-object v4

    .line 72
    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->scientificFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    return-object v4

    .line 63
    .end local v2    # "abs":D
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 67
    .end local v0    # "value":D
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
