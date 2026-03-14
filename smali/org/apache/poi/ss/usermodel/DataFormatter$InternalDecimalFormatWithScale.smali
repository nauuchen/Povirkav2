.class Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;
.super Ljava/text/Format;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalDecimalFormatWithScale"
.end annotation


# static fields
.field private static final ONE_THOUSAND:Ljava/math/BigDecimal;

.field private static final endsWithCommas:Ljava/util/regex/Pattern;


# instance fields
.field private final df:Ljava/text/DecimalFormat;

.field private divider:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 692
    const-string v0, "(,+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->endsWithCommas:Ljava/util/regex/Pattern;

    .line 694
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->ONE_THOUSAND:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DecimalFormatSymbols;

    .line 700
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 701
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->trimTrailingCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->df:Ljava/text/DecimalFormat;

    .line 702
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 703
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->endsWithCommas:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 704
    .local v0, "endsWithCommasMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "commas":Ljava/lang/String;
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 707
    .local v2, "temp":Ljava/math/BigDecimal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 708
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->ONE_THOUSAND:Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 707
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    .line 711
    .end local v1    # "commas":Ljava/lang/String;
    .end local v2    # "temp":Ljava/math/BigDecimal;
    goto :goto_1

    .line 712
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    .line 714
    :goto_1
    return-void
.end method

.method private scaleInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 718
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 719
    move-object v1, p1

    check-cast v1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 720
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 721
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 723
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 726
    :cond_2
    :goto_0
    return-object p1
.end method

.method private static final trimTrailingCommas(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 697
    const-string v0, ",+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 731
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->scaleInput(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 732
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
