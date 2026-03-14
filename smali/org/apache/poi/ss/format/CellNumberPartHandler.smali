.class public Lorg/apache/poi/ss/format/CellNumberPartHandler;
.super Ljava/lang/Object;
.source "CellNumberPartHandler.java"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private improperFraction:Z

.field private insertSignForExponent:C

.field private numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private scale:D

.field private slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    return-void
.end method

.method private static firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    .line 157
    .local p0, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 158
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    return-object v1

    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 2
    .param p0, "s"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 153
    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 5

    .line 133
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 134
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 136
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    move-object v2, v1

    .line 138
    .local v2, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 141
    iget v3, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v4, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    goto :goto_2

    .line 144
    :cond_0
    move-object v2, v1

    goto :goto_1

    .line 146
    :cond_1
    :goto_2
    return-object v2

    .line 148
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    goto :goto_0

    .line 149
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getNumerator()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    return-wide v0
.end method

.method public getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getSpecials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    return-object v0
.end method

.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "descBuf"    # Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 44
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 45
    .local v2, "firstCh":C
    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x25

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x45

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 99
    const/4 v1, 0x0

    return-object v1

    .line 83
    :pswitch_0
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 84
    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 87
    iget-boolean v6, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    iget-object v7, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-static {v7}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v7

    if-ne v3, v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    .line 88
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v1, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 89
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 75
    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 76
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v1, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 77
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 52
    new-instance v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v3, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 53
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    .line 55
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_2
    iget-wide v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    iput-wide v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->scale:D

    .line 96
    goto :goto_1

    .line 62
    :cond_3
    :pswitch_2
    iget-char v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    if-eqz v3, :cond_4

    .line 63
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v5, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-char v3, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    iput-char v1, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->insertSignForExponent:C

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 68
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 70
    .local v3, "ch":C
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->specials:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    add-int v6, v0, v1

    invoke-direct {v5, v3, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_5
    nop

    .line 101
    :cond_6
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isImproperFraction()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberPartHandler;->improperFraction:Z

    return v0
.end method
