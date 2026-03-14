.class public Lorg/apache/poi/ss/format/CellNumberFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellNumberFormatter$Special;,
        Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

.field private final afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final decimalFmt:Ljava/text/DecimalFormat;

.field private final decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final denominatorFmt:Ljava/lang/String;

.field private final denominatorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final desc:Ljava/lang/String;

.field private final exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final exponentDigitSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final exponentSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final fractionalSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final improperFraction:Z

.field private final integerSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final maxDenominator:I

.field private final numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final numeratorFmt:Ljava/lang/String;

.field private final numeratorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final printfFmt:Ljava/lang/String;

.field private final scale:D

.field private final showGroupingSeparator:Z

.field private final slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

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
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 23
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;

    .line 137
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 55
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 56
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 57
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    .line 58
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 59
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    .line 73
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter$GeneralNumberFormatter;-><init>(Ljava/util/Locale;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    .line 139
    new-instance v1, Lorg/apache/poi/ss/format/CellNumberPartHandler;

    invoke-direct {v1}, Lorg/apache/poi/ss/format/CellNumberPartHandler;-><init>()V

    move-object v15, v1

    .line 140
    .local v15, "ph":Lorg/apache/poi/ss/format/CellNumberPartHandler;
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    move-object/from16 v6, p2

    invoke-static {v6, v1, v15}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 142
    .local v16, "descBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 143
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSpecials()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->isImproperFraction()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    .line 147
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getExponent()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 149
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getSlash()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 152
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getNumerator()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 155
    :goto_0
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    invoke-static {v1, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I

    move-result v4

    .line 156
    .local v4, "precision":I
    const/4 v1, 0x0

    .line 157
    .local v1, "fractionPartWidth":I
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 158
    add-int/lit8 v1, v4, 0x1

    .line 159
    if-nez v4, :cond_2

    .line 162
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getDecimalPoint()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 171
    :goto_1
    move/from16 v17, v1

    goto :goto_2

    .line 168
    :cond_3
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move/from16 v17, v1

    .line 171
    .end local v1    # "fractionPartWidth":I
    .local v17, "fractionPartWidth":I
    :goto_2
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_4

    .line 172
    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    .line 173
    :cond_4
    if-eqz v5, :cond_5

    .line 174
    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    .line 175
    :cond_5
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_6

    .line 176
    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_3

    .line 178
    :cond_6
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 181
    :goto_3
    if-eqz v5, :cond_7

    .line 182
    iput-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    .line 183
    :cond_7
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_8

    .line 184
    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_4

    .line 186
    :cond_8
    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 189
    :goto_4
    const/4 v3, 0x1

    new-array v1, v3, [D

    invoke-virtual {v15}, Lorg/apache/poi/ss/format/CellNumberPartHandler;->getScale()D

    move-result-wide v18

    const/4 v2, 0x0

    aput-wide v18, v1, v2

    move-object/from16 v18, v1

    .line 190
    .local v18, "scaleByRef":[D
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v19

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v20

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    const/4 v14, 0x0

    move-object v2, v7

    move-object/from16 v3, v21

    move/from16 v22, v4

    .end local v4    # "precision":I
    .local v22, "precision":I
    move/from16 v4, v19

    move-object v14, v5

    move/from16 v5, v20

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    .line 191
    if-nez v14, :cond_9

    .line 192
    const/4 v1, 0x0

    aget-wide v2, v18, v1

    iput-wide v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_5

    .line 195
    :cond_9
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 198
    :goto_5
    move/from16 v1, v22

    .end local v22    # "precision":I
    .local v1, "precision":I
    if-eqz v1, :cond_a

    .line 200
    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v4

    invoke-interface {v7, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 198
    :cond_a
    const/4 v3, 0x1

    .line 203
    :goto_6
    const/4 v2, 0x2

    if-eqz v14, :cond_b

    .line 204
    invoke-interface {v7, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 205
    .local v4, "exponentPos":I
    invoke-direct {v0, v4, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    add-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    .end local v4    # "exponentPos":I
    :cond_b
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_e

    .line 210
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_c

    .line 211
    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_c
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 217
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 218
    iput v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 219
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 220
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_7

    .line 222
    :cond_d
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxValue(Ljava/util/List;)I

    move-result v4

    iput v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 223
    invoke-static {v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 224
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto :goto_7

    .line 227
    :cond_e
    iput v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 228
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 229
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    .line 232
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v7, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    const/16 v4, 0x2e

    const/16 v5, 0x30

    if-nez v14, :cond_f

    .line 235
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "fmtBuf":Ljava/lang/StringBuffer;
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->calculateIntegerPartWidth()I

    move-result v3

    .line 238
    .local v3, "integerPartWidth":I
    add-int v6, v3, v17

    .line 240
    .local v6, "totalWidth":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 242
    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    .line 244
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    .line 245
    .end local v2    # "fmtBuf":Ljava/lang/StringBuffer;
    .end local v3    # "integerPartWidth":I
    .end local v6    # "totalWidth":I
    goto/16 :goto_c

    .line 246
    :cond_f
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v6, "fmtBuf":Ljava/lang/StringBuffer;
    const/4 v7, 0x1

    .line 248
    .local v7, "first":Z
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 249
    .local v9, "specialList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_10

    .line 251
    const-string v3, "0"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const/4 v3, 0x0

    .end local v7    # "first":Z
    .local v3, "first":Z
    goto :goto_a

    .line 254
    .end local v3    # "first":Z
    .restart local v7    # "first":Z
    :cond_10
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 255
    .local v8, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 256
    if-eqz v7, :cond_11

    const/16 v10, 0x23

    goto :goto_9

    :cond_11
    const/16 v10, 0x30

    :goto_9
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    const/4 v7, 0x0

    .end local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_12
    goto :goto_8

    .line 254
    :cond_13
    move v3, v7

    .line 260
    .end local v7    # "first":Z
    .local v3, "first":Z
    :goto_a
    iget-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 261
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 263
    .local v7, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 264
    if-nez v3, :cond_14

    .line 265
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    :cond_14
    const/4 v3, 0x0

    .end local v7    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_15
    goto :goto_b

    .line 270
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_16
    const/16 v4, 0x45

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    iget-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 272
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    .line 273
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    .line 276
    .end local v3    # "first":Z
    .end local v6    # "fmtBuf":Ljava/lang/StringBuffer;
    .end local v9    # "specialList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    .line 277
    return-void
.end method

.method private calculateIntegerPartWidth()I
    .locals 4

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "digitCount":I
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 340
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v2, v3, :cond_0

    .line 341
    goto :goto_1

    .line 342
    :cond_0
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    goto :goto_0

    .line 346
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return v0
.end method

.method private static deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z

    .line 296
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    return-object v0
.end method

.method private fractionalEnd()I
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private static varargs hasChar(C[Ljava/util/List;)Z
    .locals 7
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 725
    .local p1, "numSpecials":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/List;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 726
    .local v3, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 727
    .local v5, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v6, p0, :cond_0

    .line 728
    const/4 v6, 0x1

    return v6

    .end local v5    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_1

    .line 725
    .end local v3    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "arr$":[Ljava/util/List;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 1
    .param p0, "special"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "toAdd"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I

    .line 292
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method private integerEnd()I
    .locals 2

    .line 415
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static interpretIntegerCommas(Ljava/lang/StringBuffer;Ljava/util/List;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;II[D)Z
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "decimalPoint"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "integerEnd"    # I
    .param p4, "fractionalEnd"    # I
    .param p5, "scale"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "II[D)Z"
        }
    .end annotation

    .line 369
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 371
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v1, 0x1

    .line 372
    .local v1, "stillScaling":Z
    const/4 v2, 0x0

    .line 373
    .local v2, "integerCommas":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    const-wide v4, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x0

    const/16 v7, 0x2c

    if-eqz v3, :cond_2

    .line 374
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 375
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v8, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v8, v7, :cond_0

    .line 376
    const/4 v1, 0x0

    goto :goto_1

    .line 378
    :cond_0
    if-eqz v1, :cond_1

    .line 379
    aget-wide v7, p5, v6

    div-double/2addr v7, v4

    aput-wide v7, p5, v6

    goto :goto_1

    .line 381
    :cond_1
    const/4 v2, 0x1

    .line 384
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_1
    goto :goto_0

    .line 386
    :cond_2
    if-eqz p2, :cond_4

    .line 387
    invoke-interface {p1, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 388
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 389
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 390
    .restart local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v8, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v8, v7, :cond_3

    .line 391
    goto :goto_3

    .line 393
    :cond_3
    aget-wide v8, p5, v6

    div-double/2addr v8, v4

    aput-wide v8, p5, v6

    .line 395
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    goto :goto_2

    .line 399
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "removed":I
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 402
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 403
    .local v4, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v5, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v5, v3

    iput v5, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 404
    iget-char v5, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v5, v7, :cond_5

    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 406
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 407
    iget v5, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 409
    .end local v4    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_5
    goto :goto_4

    .line 411
    :cond_6
    return v2
.end method

.method private static interpretPrecision(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/util/List;)I
    .locals 5
    .param p0, "decimalPoint"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    .line 350
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 351
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 352
    .local v1, "precision":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 354
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 355
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 357
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    goto :goto_1

    .line 360
    :cond_0
    nop

    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    add-int/lit8 v1, v1, 0x1

    .line 361
    goto :goto_0

    .line 363
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_1
    :goto_1
    return v1
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 2
    .param p0, "s"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 333
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

.method private static lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    .line 859
    .local p0, "s":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method private localiseFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .line 704
    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 705
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "."

    const/16 v3, 0x2e

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    const/16 v4, 0x2c

    if-eq v1, v4, :cond_1

    .line 706
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 707
    const-string v1, "\\."

    const-string v2, "[DECIMAL_SEPARATOR]"

    invoke-static {p1, v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 708
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    if-eq v1, v3, :cond_2

    .line 714
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 716
    :cond_2
    :goto_0
    return-object p1
.end method

.method private static maxValue(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    .line 308
    .local p0, "s":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private static placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 285
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_0

    .line 289
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?s)(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;
    .locals 7
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z
    .param p4, "withChar"    # C

    .line 300
    new-instance v6, Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V

    return-object v6
.end method

.method private static singleNumberFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 304
    .local p0, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private specialsFor(I)Ljava/util/List;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private specialsFor(II)Ljava/util/List;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "takeFirst"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 316
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 317
    .local v1, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    add-int v2, p1, p2

    .line 318
    .local v2, "end":I
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 320
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v5, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 321
    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 323
    move-object v1, v3

    .line 324
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    goto :goto_0

    .line 325
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, p1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 21
    .param p1, "value"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fractional"    # D
    .param p6, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p7, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    iget-boolean v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_a

    .line 641
    const/16 v0, 0x20

    const/16 v6, 0x3f

    const/16 v1, 0x30

    cmpl-double v2, v8, v12

    if-nez v2, :cond_1

    new-array v2, v15, [Ljava/util/List;

    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    const/16 v13, 0x3f

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 644
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    .line 645
    .local v1, "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v2

    .line 646
    .local v2, "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v14

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    invoke-static {v1, v14, v2, v15, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {v1, v14, v2, v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    return-void

    .line 641
    .end local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    const/16 v2, 0x3f

    .line 658
    new-array v3, v15, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v14

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    xor-int/2addr v3, v15

    move/from16 v16, v3

    .line 659
    .local v16, "numNoZero":Z
    new-array v3, v15, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v14

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v1

    xor-int/2addr v1, v15

    move/from16 v17, v1

    .line 660
    .local v17, "intNoZero":Z
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v15, :cond_2

    const/16 v1, 0x23

    new-array v3, v15, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v14

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move/from16 v18, v1

    .line 662
    .local v18, "intOnlyHash":Z
    cmpl-double v1, v8, v12

    if-nez v1, :cond_5

    if-nez v18, :cond_4

    if-eqz v16, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    move/from16 v19, v1

    .line 663
    .local v19, "removeBecauseZero":Z
    cmpl-double v1, v8, v12

    if-eqz v1, :cond_6

    if-eqz v17, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    move/from16 v20, v1

    .line 665
    .local v20, "removeBecauseFraction":Z
    cmpl-double v1, p1, v12

    if-nez v1, :cond_9

    if-nez v19, :cond_7

    if-eqz v20, :cond_9

    .line 666
    :cond_7
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->lastSpecial(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    .line 667
    .restart local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    new-array v3, v11, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v14

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    .line 668
    .local v2, "hasPlaceHolder":Z
    if-eqz v2, :cond_8

    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v15, v3, v14, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    goto :goto_5

    :cond_8
    iget-object v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v15, v0, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    .line 671
    .local v0, "sm":Lorg/apache/poi/ss/format/CellNumberStringMod;
    :goto_5
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v0    # "sm":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .end local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "hasPlaceHolder":Z
    goto :goto_6

    .line 674
    :cond_9
    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 684
    .end local v16    # "numNoZero":Z
    .end local v17    # "intNoZero":Z
    .end local v18    # "intOnlyHash":Z
    .end local v19    # "removeBecauseZero":Z
    .end local v20    # "removeBecauseFraction":Z
    :cond_a
    :goto_6
    cmpl-double v0, v8, v12

    if-eqz v0, :cond_c

    :try_start_0
    iget-boolean v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v0, :cond_b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rem-double v0, v8, v0

    cmpl-double v2, v0, v12

    if-nez v2, :cond_b

    goto :goto_7

    .line 689
    :cond_b
    iget v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    invoke-static {v8, v9, v0}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0

    .line 690
    .local v0, "frac":Lorg/apache/poi/ss/format/SimpleFraction;
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v1

    .line 691
    .local v1, "n":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v2

    move v0, v2

    .local v2, "d":I
    goto :goto_8

    .line 686
    .end local v0    # "frac":Lorg/apache/poi/ss/format/SimpleFraction;
    .end local v1    # "n":I
    .end local v2    # "d":I
    :cond_c
    :goto_7
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 687
    .restart local v1    # "n":I
    const/4 v2, 0x1

    move v0, v2

    .line 693
    .local v0, "d":I
    :goto_8
    iget-boolean v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v2, :cond_d

    .line 694
    int-to-long v2, v1

    int-to-double v4, v0

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    move v12, v1

    goto :goto_9

    .line 693
    :cond_d
    move v12, v1

    .line 696
    .end local v1    # "n":I
    .local v12, "n":I
    :goto_9
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move v3, v12

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V

    .line 697
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move v3, v0

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0    # "d":I
    .end local v12    # "n":I
    goto :goto_a

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ignored":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "error while fraction evaluation"

    aput-object v4, v3, v14

    aput-object v0, v3, v15

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 701
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    :goto_a
    return-void
.end method

.method private writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .line 821
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 822
    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "decimalSeparator":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 824
    .local v1, "digit":I
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v2, :cond_0

    .line 825
    const-string v2, "e"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "strip":I
    goto :goto_0

    .line 827
    .end local v2    # "strip":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 830
    .restart local v2    # "strip":I
    :goto_0
    const/16 v3, 0x30

    if-le v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    .line 831
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 834
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 835
    .local v5, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    .line 836
    .local v6, "resultCh":C
    if-ne v6, v3, :cond_3

    iget-char v7, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v7, v3, :cond_3

    if-ge v1, v2, :cond_2

    goto :goto_2

    .line 838
    :cond_2
    iget-char v7, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_4

    .line 841
    iget v7, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    const/16 v8, 0x20

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_3

    .line 837
    :cond_3
    :goto_2
    iget v7, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p2, v7, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 843
    :cond_4
    :goto_3
    nop

    .end local v5    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v6    # "resultCh":C
    add-int/lit8 v1, v1, 0x1

    .line 844
    goto :goto_1

    .line 846
    .end local v0    # "decimalSeparator":Ljava/lang/String;
    .end local v1    # "digit":I
    .end local v2    # "strip":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 18
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;
    .param p5, "showGroupingSeparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;Z)V"
        }
    .end annotation

    .line 751
    .local p3, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    .line 752
    .local v4, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "decimalSeparator":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, "groupingSeparator":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 756
    .local v7, "pos":I
    if-gez v7, :cond_1

    .line 757
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v9, :cond_0

    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    if-ne v2, v9, :cond_0

    .line 758
    const-string v9, "E"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 765
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .local v9, "strip":I
    :goto_1
    const/16 v10, 0x30

    if-ge v9, v7, :cond_3

    .line 766
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    .line 767
    .local v11, "resultCh":C
    if-eq v11, v10, :cond_2

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v12

    if-eq v11, v12, :cond_2

    .line 768
    goto :goto_2

    .line 765
    .end local v11    # "resultCh":C
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 772
    :cond_3
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v2, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    .line 773
    .local v11, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v12, 0x0

    .line 774
    .local v12, "followWithGroupingSeparator":Z
    const/4 v13, 0x0

    .line 775
    .local v13, "lastOutputIntegerDigit":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/4 v14, 0x0

    .line 776
    .local v14, "digit":I
    :goto_3
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 778
    if-ltz v7, :cond_4

    .line 779
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    .local v15, "resultCh":C
    goto :goto_4

    .line 782
    .end local v15    # "resultCh":C
    :cond_4
    const/16 v15, 0x30

    .line 784
    .restart local v15    # "resultCh":C
    :goto_4
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 785
    .local v8, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    if-eqz p5, :cond_5

    if-lez v14, :cond_5

    rem-int/lit8 v16, v14, 0x3

    if-nez v16, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move/from16 v12, v16

    .line 786
    const/16 v16, 0x0

    .line 787
    .local v16, "zeroStrip":Z
    if-ne v15, v10, :cond_7

    iget-char v0, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v0, v10, :cond_7

    iget-char v0, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v10, 0x3f

    if-eq v0, v10, :cond_7

    if-lt v7, v9, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v2, p2

    goto :goto_9

    .line 788
    :cond_7
    :goto_6
    iget-char v0, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v10, 0x3f

    if-ne v0, v10, :cond_8

    if-ge v7, v9, :cond_8

    const/16 v17, 0x1

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    :goto_7
    move/from16 v16, v17

    .line 789
    iget v0, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    if-eqz v16, :cond_9

    const/16 v10, 0x20

    goto :goto_8

    :cond_9
    move v10, v15

    :goto_8
    move-object/from16 v2, p2

    invoke-virtual {v2, v0, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 790
    move-object v0, v8

    move-object v13, v0

    .line 792
    :goto_9
    if-eqz v12, :cond_b

    .line 793
    if-eqz v16, :cond_a

    const-string v0, " "

    goto :goto_a

    :cond_a
    move-object v0, v6

    :goto_a
    const/4 v10, 0x2

    invoke-static {v8, v0, v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    const/4 v0, 0x0

    move v12, v0

    .line 796
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 797
    nop

    .end local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v15    # "resultCh":C
    .end local v16    # "zeroStrip":Z
    add-int/lit8 v7, v7, -0x1

    .line 798
    const/4 v8, 0x1

    const/16 v10, 0x30

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto :goto_3

    .line 799
    :cond_c
    move-object/from16 v2, p2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 800
    .local v0, "extraLeadingDigits":Ljava/lang/StringBuffer;
    if-ltz v7, :cond_f

    .line 803
    add-int/lit8 v7, v7, 0x1

    .line 804
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    .line 805
    if-eqz p5, :cond_e

    .line 806
    :goto_b
    if-lez v7, :cond_e

    .line 807
    if-lez v14, :cond_d

    rem-int/lit8 v8, v14, 0x3

    if-nez v8, :cond_d

    .line 808
    invoke-virtual {v0, v7, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 811
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    .line 814
    :cond_e
    const/4 v8, 0x1

    invoke-static {v13, v0, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_f
    return-void
.end method

.method private writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 20
    .param p1, "value"    # D
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    .line 561
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    .line 562
    .local v8, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v10, v0

    .line 563
    .local v10, "fractionPos":Ljava/text/FieldPosition;
    iget-object v0, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12, v8, v10}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 564
    iget-object v3, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v5, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 565
    move-object/from16 v13, p3

    invoke-direct {v6, v8, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 604
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v14

    .line 605
    .local v14, "ePos":I
    add-int/lit8 v15, v14, 0x1

    .line 606
    .local v15, "signPos":I
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 607
    .local v0, "expSignRes":C
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    .line 609
    const/16 v0, 0x2b

    .line 612
    invoke-virtual {v8, v15, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v5, v0

    goto :goto_0

    .line 607
    :cond_0
    move v5, v0

    .line 616
    .end local v0    # "expSignRes":C
    .local v5, "expSignRes":C
    :goto_0
    iget-object v0, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v16

    .line 617
    .local v16, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 618
    .local v4, "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v3, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    .line 622
    .local v3, "expSignFmt":C
    if-eq v5, v2, :cond_2

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 625
    :cond_1
    invoke-static {v4, v9, v4, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 623
    :cond_2
    :goto_1
    invoke-static {v4, v9, v4, v9, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberStringMod;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "exponentNum":Ljava/lang/StringBuffer;
    iget-object v9, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v18, v3

    .end local v3    # "expSignFmt":C
    .local v18, "expSignFmt":C
    move-object v3, v9

    move-object v9, v4

    .end local v4    # "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .local v9, "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object/from16 v4, p4

    move/from16 v19, v5

    .end local v5    # "expSignRes":C
    .local v19, "expSignRes":C
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 630
    return-void
.end method

.method private writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    .locals 8
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberStringMod;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p4, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p5, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 738
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v7, v1

    .line 740
    .local v7, "formatter":Ljava/util/Formatter;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, p1, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 743
    nop

    .line 744
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 745
    return-void

    .line 742
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    throw v1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 28
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "valueObject"    # Ljava/lang/Object;

    .line 424
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 425
    .local v0, "value":D
    iget-wide v2, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double v0, v0, v2

    .line 434
    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v13, v2

    .line 435
    .local v13, "negative":Z
    if-eqz v13, :cond_1

    .line 436
    neg-double v0, v0

    .line 439
    :cond_1
    const-wide/16 v2, 0x0

    .line 440
    .local v2, "fractional":D
    iget-object v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_3

    .line 441
    iget-boolean v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v4, :cond_2

    .line 442
    move-wide v2, v0

    .line 443
    const-wide/16 v0, 0x0

    move-wide v14, v0

    move-wide/from16 v16, v2

    goto :goto_1

    .line 445
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double v2, v0, v4

    .line 447
    double-to-long v4, v0

    long-to-double v0, v4

    move-wide v14, v0

    move-wide/from16 v16, v2

    goto :goto_1

    .line 440
    :cond_3
    move-wide v14, v0

    move-wide/from16 v16, v2

    .line 451
    .end local v0    # "value":D
    .end local v2    # "fractional":D
    .local v14, "value":D
    .local v16, "fractional":D
    :goto_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v8, v0

    .line 452
    .local v8, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->localiseFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 454
    .local v7, "output":Ljava/lang/StringBuffer;
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_4

    .line 455
    invoke-direct {v9, v14, v15, v7, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_2

    .line 456
    :cond_4
    iget-boolean v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v0, :cond_5

    .line 457
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v18, v7

    .end local v7    # "output":Ljava/lang/StringBuffer;
    .local v18, "output":Ljava/lang/StringBuffer;
    move-object/from16 v19, v8

    .end local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    .local v19, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    .line 459
    .end local v18    # "output":Ljava/lang/StringBuffer;
    .end local v19    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    .restart local v7    # "output":Ljava/lang/StringBuffer;
    .restart local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    :cond_5
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "output":Ljava/lang/StringBuffer;
    .end local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    .restart local v18    # "output":Ljava/lang/StringBuffer;
    .restart local v19    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    .line 460
    .local v8, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v8, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v7, v0

    .line 462
    .local v7, "f":Ljava/util/Formatter;
    :try_start_0
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->locale:Ljava/util/Locale;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 465
    nop

    .line 467
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_6

    .line 468
    move-object/from16 v6, v18

    .end local v18    # "output":Ljava/lang/StringBuffer;
    .local v6, "output":Ljava/lang/StringBuffer;
    invoke-direct {v9, v8, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 469
    iget-object v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->showGroupingSeparator:Z

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v6

    move-object/from16 v5, v19

    .end local v6    # "output":Ljava/lang/StringBuffer;
    .restart local v18    # "output":Ljava/lang/StringBuffer;
    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_2

    .line 471
    :cond_6
    move-object/from16 v1, p0

    move-wide v2, v14

    move-object v4, v8

    move-wide/from16 v5, v16

    move-object/from16 v20, v7

    .end local v7    # "f":Ljava/util/Formatter;
    .local v20, "f":Ljava/util/Formatter;
    move-object/from16 v7, v18

    move-object/from16 v21, v8

    .end local v8    # "result":Ljava/lang/StringBuffer;
    .local v21, "result":Ljava/lang/StringBuffer;
    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    .line 475
    .end local v20    # "f":Ljava/util/Formatter;
    .end local v21    # "result":Ljava/lang/StringBuffer;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 476
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "groupingSeparator":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 482
    .local v3, "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    :goto_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 483
    .local v5, "deletedChars":Ljava/util/BitSet;
    const/4 v6, 0x0

    .line 484
    .local v6, "adjust":I
    iget-object v7, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v4, v22

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 485
    .local v4, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v11, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v11, v6

    .line 486
    .local v11, "adjustedPos":I
    iget v12, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v5, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    .local v12, "output":Ljava/lang/StringBuffer;
    .local v18, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    move-object/from16 v23, v3

    .end local v3    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .local v23, "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    const/16 v3, 0x23

    if-ne v0, v3, :cond_9

    .line 487
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 488
    add-int/lit8 v6, v6, -0x1

    .line 489
    iget v0, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v3, v23

    goto :goto_5

    .line 486
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v23    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .restart local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v3    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .local v18, "output":Ljava/lang/StringBuffer;
    :cond_8
    move-object/from16 v23, v3

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .line 491
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v3    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v18, "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v23    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    :cond_9
    move-object/from16 v3, v23

    .end local v23    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .restart local v3    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    :goto_5
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getSpecial()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v0

    if-ne v4, v0, :cond_15

    .line 492
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 493
    .local v0, "lenBefore":I
    move-object/from16 v24, v7

    .end local v7    # "i$":Ljava/util/Iterator;
    .local v24, "i$":Ljava/util/Iterator;
    iget v7, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v7, v6

    .line 494
    .local v7, "modPos":I
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v9

    move/from16 v25, v11

    const/4 v11, 0x1

    .end local v11    # "adjustedPos":I
    .local v25, "adjustedPos":I
    if-eq v9, v11, :cond_13

    const/4 v11, 0x2

    if-eq v9, v11, :cond_11

    const/4 v11, 0x3

    if-ne v9, v11, :cond_10

    .line 508
    iget v8, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 509
    .local v8, "delPos":I
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isStartInclusive()Z

    move-result v9

    if-nez v9, :cond_a

    .line 510
    add-int/lit8 v8, v8, 0x1

    .line 511
    add-int/lit8 v7, v7, 0x1

    .line 515
    :cond_a
    :goto_6
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 516
    add-int/lit8 v8, v8, 0x1

    .line 517
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 521
    :cond_b
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getEnd()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v9

    iget v9, v9, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 522
    .local v9, "delEndPos":I
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->isEndInclusive()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 523
    add-int/lit8 v9, v9, 0x1

    .line 527
    :cond_c
    add-int v11, v9, v6

    .line 529
    .local v11, "modEndPos":I
    if-ge v7, v11, :cond_f

    .line 530
    move-wide/from16 v26, v14

    .end local v14    # "value":D
    .local v26, "value":D
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 531
    invoke-virtual {v12, v7, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 534
    :cond_d
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 535
    .local v14, "fillCh":C
    move/from16 v20, v7

    move/from16 v15, v20

    .local v15, "i":I
    :goto_7
    if-ge v15, v11, :cond_e

    .line 536
    invoke-virtual {v12, v15, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 535
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 539
    .end local v14    # "fillCh":C
    .end local v15    # "i":I
    :cond_e
    :goto_8
    invoke-virtual {v5, v8, v9}, Ljava/util/BitSet;->set(II)V

    goto :goto_9

    .line 529
    .end local v26    # "value":D
    .local v14, "value":D
    :cond_f
    move-wide/from16 v26, v14

    .line 546
    .end local v8    # "delPos":I
    .end local v9    # "delEndPos":I
    .end local v11    # "modEndPos":I
    .end local v14    # "value":D
    .restart local v26    # "value":D
    :goto_9
    move/from16 v20, v9

    move/from16 v21, v11

    goto :goto_a

    .line 494
    .end local v26    # "value":D
    .restart local v14    # "value":D
    :cond_10
    move-wide/from16 v26, v14

    .end local v14    # "value":D
    .restart local v26    # "value":D
    move/from16 v9, v21

    .local v9, "modEndPos":I
    move/from16 v11, v20

    .line 544
    .restart local v8    # "delPos":I
    .local v11, "delEndPos":I
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    .end local v8    # "delPos":I
    .local v20, "delPos":I
    const-string v8, "Unknown op: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getOp()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 497
    .end local v9    # "modEndPos":I
    .end local v11    # "delEndPos":I
    .end local v20    # "delPos":I
    .end local v26    # "value":D
    .restart local v14    # "value":D
    :cond_11
    move-wide/from16 v26, v14

    .end local v14    # "value":D
    .restart local v26    # "value":D
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget v9, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 498
    goto :goto_a

    .line 500
    :cond_12
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v12, v9, v11}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 501
    goto :goto_a

    .line 503
    .end local v26    # "value":D
    .restart local v14    # "value":D
    :cond_13
    move-wide/from16 v26, v14

    .end local v14    # "value":D
    .restart local v26    # "value":D
    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellNumberStringMod;->getToAdd()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v12, v7, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 504
    nop

    .line 546
    :goto_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    sub-int/2addr v9, v0

    add-int/2addr v6, v9

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/format/CellNumberStringMod;

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :goto_b
    move-object v3, v9

    .line 549
    .end local v0    # "lenBefore":I
    .end local v7    # "modPos":I
    move-object/from16 v9, p0

    move-object/from16 v7, v24

    move/from16 v11, v25

    move-wide/from16 v14, v26

    goto/16 :goto_5

    .line 491
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "adjustedPos":I
    .end local v26    # "value":D
    .local v7, "i$":Ljava/util/Iterator;
    .local v11, "adjustedPos":I
    .restart local v14    # "value":D
    :cond_15
    move-object/from16 v24, v7

    move/from16 v25, v11

    move-wide/from16 v26, v14

    .line 550
    .end local v4    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "adjustedPos":I
    .end local v14    # "value":D
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v26    # "value":D
    move-object/from16 v9, p0

    move-object/from16 v0, v18

    move-object/from16 v7, v24

    move-wide/from16 v14, v26

    const/4 v11, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 484
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "value":D
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v14    # "value":D
    .local v18, "output":Ljava/lang/StringBuffer;
    :cond_16
    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-wide/from16 v26, v14

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .line 553
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v3    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v14    # "value":D
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v18, "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v23    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .restart local v26    # "value":D
    if-eqz v13, :cond_17

    .line 554
    const/16 v0, 0x2d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    :cond_17
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 557
    return-void

    .line 464
    .end local v1    # "groupingSeparator":Ljava/lang/String;
    .end local v2    # "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberStringMod;>;"
    .end local v5    # "deletedChars":Ljava/util/BitSet;
    .end local v6    # "adjust":I
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v23    # "nextChange":Lorg/apache/poi/ss/format/CellNumberStringMod;
    .end local v26    # "value":D
    .local v7, "f":Ljava/util/Formatter;
    .local v8, "result":Ljava/lang/StringBuffer;
    .restart local v14    # "value":D
    .local v18, "output":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v26, v14

    move-object/from16 v12, v18

    .end local v7    # "f":Ljava/util/Formatter;
    .end local v8    # "result":Ljava/lang/StringBuffer;
    .end local v14    # "value":D
    .end local v18    # "output":Ljava/lang/StringBuffer;
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v20, "f":Ljava/util/Formatter;
    .restart local v21    # "result":Ljava/lang/StringBuffer;
    .restart local v26    # "value":D
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 856
    return-void
.end method
