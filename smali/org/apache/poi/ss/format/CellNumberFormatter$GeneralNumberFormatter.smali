.class Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeneralNumberFormatter"
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 77
    const-string v0, "General"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$1;

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 81
    if-nez p2, :cond_0

    .line 82
    return-void

    .line 86
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 87
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 88
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;->locale:Ljava/util/Locale;

    if-nez v5, :cond_1

    const-string v3, "#"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "#.#"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 90
    .local v0, "cf":Lorg/apache/poi/ss/format/CellFormatter;
    goto :goto_1

    .line 91
    .end local v0    # "cf":Lorg/apache/poi/ss/format/CellFormatter;
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/format/CellTextFormatter;->SIMPLE_TEXT:Lorg/apache/poi/ss/format/CellFormatter;

    .line 93
    .restart local v0    # "cf":Lorg/apache/poi/ss/format/CellFormatter;
    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 98
    return-void
.end method
