.class public Lorg/apache/poi/ss/usermodel/DataFormatter;
.super Ljava/lang/Object;
.source "DataFormatter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;
    }
.end annotation


# static fields
.field private static final alternateGrouping:Ljava/util/regex/Pattern;

.field private static final amPmPattern:Ljava/util/regex/Pattern;

.field private static final colorPattern:Ljava/util/regex/Pattern;

.field private static final daysAsText:Ljava/util/regex/Pattern;

.field private static final defaultFractionFractionPartFormat:Ljava/lang/String; = "#/##"

.field private static final defaultFractionWholePartFormat:Ljava/lang/String; = "#"

.field private static final fractionPattern:Ljava/util/regex/Pattern;

.field private static final fractionStripper:Ljava/util/regex/Pattern;

.field private static final invalidDateTimeString:Ljava/lang/String;

.field private static final localePatternGroup:Ljava/util/regex/Pattern;

.field private static logger:Lorg/apache/poi/util/POILogger;

.field private static final numPattern:Ljava/util/regex/Pattern;

.field private static final rangeConditionalPattern:Ljava/util/regex/Pattern;


# instance fields
.field private dateSymbols:Ljava/text/DateFormatSymbols;

.field private decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private defaultDateformat:Ljava/text/DateFormat;

.field private defaultNumFormat:Ljava/text/Format;

.field private final emulateCSV:Z

.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private generalNumberFormat:Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private final localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

.field private localeIsAdapting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    const-string v0, "[0#]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    .line 128
    const-string v0, "([d]{3,})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "((A|P)[M/P]*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, ".*\\[\\s*(>|>=|<|<=|=)\\s*[0-9]*\\.*[0-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "(\\[\\$[^-\\]]*-[0-9A-Z]+\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    .line 147
    const-string v0, "(\\[BLACK\\])|(\\[BLUE\\])|(\\[CYAN\\])|(\\[GREEN\\])|(\\[MAGENTA\\])|(\\[RED\\])|(\\[WHITE\\])|(\\[YELLOW\\])|(\\[COLOR\\s*\\d\\])|(\\[COLOR\\s*[0-5]\\d\\])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "(?:([#\\d]+)\\s+)?(#+)\\s*\\/\\s*([#\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    .line 161
    const-string v0, "(\"[^\"]*\")|([^ \\?#\\d\\/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    .line 167
    const-string v0, "([#0]([^.#0])[#0]{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    .line 231
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    const-class v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Z)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;Z)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "emulateCSV"    # Z

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    .line 263
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;ZZ)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "localeIsAdapting"    # Z
    .param p3, "emulateCSV"    # Z

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    .line 228
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    .line 272
    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->addObserver(Ljava/util/Observer;)V

    .line 274
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange(Ljava/util/Locale;)V

    .line 278
    iput-boolean p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    .line 279
    iput-boolean p3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    .line 280
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "emulateCSV"    # Z

    .line 246
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 121
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/usermodel/DataFormatter;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 121
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 121
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return v0
.end method

.method private cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "formatStr"    # Ljava/lang/String;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    const/16 v2, 0x2a

    const/16 v3, 0x5c

    const/16 v4, 0x5f

    if-eqz v1, :cond_6

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 624
    .local v5, "c":C
    const/16 v6, 0x3f

    if-eq v5, v4, :cond_0

    if-eq v5, v2, :cond_0

    if-ne v5, v6, :cond_4

    .line 625
    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_1

    .line 627
    goto :goto_2

    .line 629
    :cond_1
    const/16 v7, 0x20

    if-ne v5, v6, :cond_2

    .line 630
    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 631
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 635
    if-ne v5, v4, :cond_3

    .line 636
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 638
    :cond_3
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 641
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 642
    add-int/lit8 v1, v1, -0x1

    .line 622
    .end local v5    # "c":C
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_5
    goto :goto_5

    .line 651
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 653
    .restart local v5    # "c":C
    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_a

    .line 654
    :cond_7
    if-lez v1, :cond_8

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_8

    .line 656
    goto :goto_4

    .line 658
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_9

    .line 662
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 665
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 666
    add-int/lit8 v1, v1, -0x1

    .line 651
    .end local v5    # "c":C
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 673
    .end local v1    # "i":I
    :cond_b
    :goto_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 676
    .local v2, "c":C
    if-eq v2, v3, :cond_d

    const/16 v4, 0x22

    if-ne v2, v4, :cond_c

    goto :goto_7

    .line 681
    :cond_c
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_e

    if-lez v1, :cond_e

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_e

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 677
    :cond_d
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 678
    add-int/lit8 v1, v1, -0x1

    .line 673
    .end local v2    # "c":C
    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 687
    .end local v1    # "i":I
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createDateFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 16
    .param p1, "pFormatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .line 471
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 472
    .local v0, "formatStr":Ljava/lang/String;
    const-string v2, "\\\\-"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v2, "\\\\,"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v2, "\\\\\\."

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string v2, "\\\\ "

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    const-string v2, "\\\\/"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, ";@"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v2, "\"/\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v2, "\"\""

    const-string v3, "\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v2, "\\\\T"

    const-string v3, "\'T\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "hasAmPm":Z
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 485
    .local v3, "amPmMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, "@"

    if-eqz v4, :cond_0

    .line 486
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const/4 v2, 0x1

    .line 488
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 490
    :cond_0
    const-string v4, "a"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 494
    .local v4, "dateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 495
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "D"

    const-string v8, "E"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "match":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .end local v5    # "match":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 510
    .local v7, "chars":[C
    const/4 v8, 0x1

    .line 511
    .local v8, "mIsMonth":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v9, "ms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 513
    .local v10, "isElapsed":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    array-length v12, v7

    if-ge v11, v12, :cond_1e

    .line 514
    aget-char v12, v7, v11

    .line 515
    .local v12, "c":C
    const/16 v14, 0x27

    if-ne v12, v14, :cond_3

    .line 516
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit8 v11, v11, 0x1

    .line 520
    :goto_2
    array-length v15, v7

    if-ge v11, v15, :cond_1d

    .line 521
    aget-char v12, v7, v11

    .line 522
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    if-ne v12, v14, :cond_2

    .line 524
    goto/16 :goto_d

    .line 526
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 529
    :cond_3
    const/16 v14, 0x5b

    if-ne v12, v14, :cond_4

    if-nez v10, :cond_4

    .line 530
    const/4 v10, 0x1

    .line 531
    const/4 v8, 0x0

    .line 532
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 534
    :cond_4
    const/16 v14, 0x5d

    if-ne v12, v14, :cond_5

    if-eqz v10, :cond_5

    .line 535
    const/4 v10, 0x0

    .line 536
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 538
    :cond_5
    const/16 v15, 0x68

    const/16 v13, 0x4d

    const/16 v14, 0x6d

    const/16 v6, 0x48

    if-eqz v10, :cond_c

    .line 539
    if-eq v12, v15, :cond_b

    if-ne v12, v6, :cond_6

    goto :goto_5

    .line 542
    :cond_6
    if-eq v12, v14, :cond_a

    if-ne v12, v13, :cond_7

    goto :goto_4

    .line 545
    :cond_7
    const/16 v6, 0x73

    if-eq v12, v6, :cond_9

    const/16 v13, 0x53

    if-ne v12, v13, :cond_8

    goto :goto_3

    .line 549
    :cond_8
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 546
    :cond_9
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 543
    :cond_a
    :goto_4
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 540
    :cond_b
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 552
    :cond_c
    if-eq v12, v15, :cond_1b

    if-ne v12, v6, :cond_d

    goto/16 :goto_c

    .line 560
    :cond_d
    if-eq v12, v14, :cond_19

    if-ne v12, v13, :cond_e

    goto/16 :goto_b

    .line 570
    :cond_e
    const/16 v6, 0x73

    if-eq v12, v6, :cond_16

    const/16 v6, 0x53

    if-ne v12, v6, :cond_f

    goto :goto_9

    .line 581
    :cond_f
    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 582
    const/4 v6, 0x1

    .line 583
    .end local v8    # "mIsMonth":Z
    .local v6, "mIsMonth":Z
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 584
    const/16 v8, 0x79

    if-eq v12, v8, :cond_13

    const/16 v13, 0x59

    if-ne v12, v13, :cond_10

    goto :goto_7

    .line 587
    :cond_10
    const/16 v8, 0x64

    if-eq v12, v8, :cond_12

    const/16 v13, 0x44

    if-ne v12, v13, :cond_11

    goto :goto_6

    .line 591
    :cond_11
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 588
    :cond_12
    :goto_6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 585
    :cond_13
    :goto_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    .end local v12    # "c":C
    :goto_8
    move v8, v6

    goto :goto_d

    .line 595
    .end local v6    # "mIsMonth":Z
    .restart local v8    # "mIsMonth":Z
    .restart local v12    # "c":C
    :cond_14
    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 596
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 598
    :cond_15
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 571
    :cond_16
    :goto_9
    const/16 v6, 0x73

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 574
    .local v14, "index":I
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v13, :cond_17

    .line 575
    add-int/lit8 v15, v14, 0x1

    const-string v13, "m"

    invoke-virtual {v5, v14, v15, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .end local v14    # "index":I
    :cond_17
    const/16 v13, 0x4d

    goto :goto_a

    .line 578
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_18
    const/4 v6, 0x1

    .line 579
    .end local v8    # "mIsMonth":Z
    .local v6, "mIsMonth":Z
    invoke-interface {v9}, Ljava/util/List;->clear()V

    move v8, v6

    goto :goto_d

    .line 561
    .end local v6    # "mIsMonth":Z
    .restart local v8    # "mIsMonth":Z
    :cond_19
    :goto_b
    if-eqz v8, :cond_1a

    .line 562
    const/16 v6, 0x4d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 567
    :cond_1a
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 553
    :cond_1b
    :goto_c
    const/4 v8, 0x0

    .line 554
    if-eqz v2, :cond_1c

    .line 555
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 557
    :cond_1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    .end local v12    # "c":C
    :cond_1d
    :goto_d
    const/4 v6, 0x1

    add-int/2addr v11, v6

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 601
    .end local v11    # "j":I
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 604
    .end local v0    # "formatStr":Ljava/lang/String;
    .local v6, "formatStr":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    iget-object v11, v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v6, v11}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v11, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Formatting failed for format "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", falling back"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v0, v12, v13

    invoke-virtual {v11, v13, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 609
    move-wide/from16 v11, p2

    invoke-direct {v1, v11, v12}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v13

    return-object v13
.end method

.method private createFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 16
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "sFormat"    # Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    .line 389
    move-object/from16 v3, p4

    .line 392
    .local v3, "formatStr":Ljava/lang/String;
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 393
    .local v4, "colourM":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v5, :cond_2

    .line 394
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "colour":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 398
    .local v8, "at":I
    if-ne v8, v7, :cond_0

    goto :goto_1

    .line 399
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "nFormatStr":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    move-object v3, v9

    .line 405
    sget-object v6, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 406
    .end local v5    # "colour":Ljava/lang/String;
    .end local v8    # "at":I
    .end local v9    # "nFormatStr":Ljava/lang/String;
    goto :goto_0

    .line 409
    :cond_2
    :goto_1
    sget-object v5, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 410
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 411
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "match":Ljava/lang/String;
    const/16 v10, 0x24

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v11, v9

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "symbol":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-le v11, v7, :cond_3

    .line 414
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v9, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 418
    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    sget-object v10, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 420
    .end local v8    # "match":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    goto :goto_2

    .line 423
    :cond_4
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move/from16 v6, p3

    goto/16 :goto_6

    .line 427
    :cond_5
    const-string v6, "General"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "@"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move/from16 v6, p3

    goto/16 :goto_5

    .line 431
    :cond_6
    move/from16 v6, p3

    invoke-static {v6, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static/range {p1 .. p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 433
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createDateFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v7

    return-object v7

    .line 436
    :cond_7
    const-string v7, "#/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "?/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    .line 457
    :cond_8
    sget-object v7, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 458
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v7

    return-object v7

    .line 461
    :cond_9
    iget-boolean v7, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz v7, :cond_a

    .line 462
    new-instance v7, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;-><init>(Ljava/lang/String;)V

    return-object v7

    .line 465
    :cond_a
    const/4 v7, 0x0

    return-object v7

    .line 437
    :cond_b
    :goto_3
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "chunks":[Ljava/lang/String;
    move-object v8, v7

    .local v8, "arr$":[Ljava/lang/String;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    const-string v12, "#"

    if-ge v11, v10, :cond_e

    aget-object v13, v8, v11

    .line 439
    .local v13, "chunk1":Ljava/lang/String;
    const-string v14, "\\?"

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, "chunk":Ljava/lang/String;
    sget-object v15, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 441
    .local v15, "matcher":Ljava/util/regex/Matcher;
    const-string v9, " "

    invoke-virtual {v15, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 442
    const-string v1, " +"

    invoke-virtual {v14, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .end local v14    # "chunk":Ljava/lang/String;
    .local v1, "chunk":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 445
    .local v2, "fractionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 446
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    const-string v12, ""

    :cond_c
    move-object v9, v12

    .line 447
    .local v9, "wholePart":Ljava/lang/String;
    new-instance v12, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v9, v14}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 445
    .end local v9    # "wholePart":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x1

    .line 438
    .end local v1    # "chunk":Ljava/lang/String;
    .end local v2    # "fractionMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "chunk1":Ljava/lang/String;
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v1, p1

    goto :goto_4

    .line 454
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    :cond_e
    new-instance v1, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const-string v2, "#/##"

    invoke-direct {v1, v12, v2}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 427
    .end local v7    # "chunks":[Ljava/lang/String;
    :cond_f
    move/from16 v6, p3

    .line 428
    :goto_5
    iget-object v1, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object v1

    .line 423
    :cond_10
    move/from16 v6, p3

    .line 424
    :goto_6
    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v1

    return-object v1
.end method

.method private static createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 3
    .param p0, "fmt"    # Ljava/lang/String;

    .line 1058
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 1059
    .local v0, "dsf":Ljava/text/DecimalFormatSymbols;
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1060
    .local v1, "result":Ljava/text/DecimalFormat;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 1061
    return-object v1
.end method

.method private createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 10
    .param p1, "formatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .line 742
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 747
    .local v1, "symbols":Ljava/text/DecimalFormatSymbols;
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 748
    .local v2, "agm":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 749
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 753
    .local v3, "grouping":C
    const/16 v7, 0x2c

    if-eq v3, v7, :cond_0

    .line 754
    iget-object v8, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 757
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, "oldPart":Ljava/lang/String;
    invoke-virtual {v8, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, "newPart":Ljava/lang/String;
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .end local v3    # "grouping":C
    .end local v7    # "newPart":Ljava/lang/String;
    .end local v8    # "oldPart":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 765
    :catch_0
    move-exception v3

    .line 766
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Formatting failed for format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", falling back"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object v3, v5, v6

    invoke-virtual {v7, v6, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 769
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v4

    return-object v4
.end method

.method private getDefaultFormat(D)Ljava/text/Format;
    .locals 1
    .param p1, "cellValue"    # D

    .line 782
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    .line 785
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    if-eqz v0, :cond_0

    .line 786
    return-object v0

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object v0
.end method

.method private getFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 10
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatStrIn"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    .line 321
    move-object v0, p4

    .line 329
    .local v0, "formatStr":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v4, v1, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Lorg/apache/poi/ss/format/CellFormat;->getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object v1

    .line 337
    .local v1, "cfmt":Lorg/apache/poi/ss/format/CellFormat;
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 338
    .local v4, "cellValueO":Ljava/lang/Object;
    invoke-static {p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v7, v5, v2

    if-eqz v7, :cond_1

    .line 341
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v5

    move-object v4, v5

    .line 344
    :cond_1
    new-instance v5, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;

    invoke-virtual {v1, v4}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 345
    .end local v1    # "cfmt":Lorg/apache/poi/ss/format/CellFormat;
    .end local v4    # "cellValueO":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Formatting failed for format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", falling back"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz v1, :cond_3

    cmpl-double v1, p1, v2

    if-nez v1, :cond_3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 352
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    .line 357
    .local v1, "format":Ljava/text/Format;
    if-eqz v1, :cond_4

    .line 358
    return-object v1

    .line 362
    :cond_4
    const-string v2, "General"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 367
    :cond_5
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v1

    .line 363
    :cond_6
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object v2
.end method

.method private getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 296
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 298
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v1

    .line 300
    .local v1, "numFmt":Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    if-nez v1, :cond_1

    .line 301
    return-object v0

    .line 304
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v2

    .line 305
    .local v2, "formatIndex":I
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "formatStr":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v0

    return-object v0

    .line 307
    :cond_3
    :goto_0
    return-object v0
.end method

.method private getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 815
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object v0

    .line 816
    .local v0, "dateFormat":Ljava/text/Format;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v1, :cond_0

    .line 818
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 822
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    .line 823
    .local v1, "d":Ljava/util/Date;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 841
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object v0

    .line 842
    .local v0, "numberFormat":Ljava/text/Format;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    .line 843
    .local v1, "d":D
    if-nez v0, :cond_0

    .line 844
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 846
    :cond_0
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, "formatted":Ljava/lang/String;
    const-string v4, "E(\\d)"

    const-string v5, "E+$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "dateFormat"    # Ljava/text/Format;

    .line 798
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    .locals 1
    .param p0, "format"    # Ljava/text/DecimalFormat;

    .line 1069
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 1070
    return-void
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .locals 0
    .param p0, "format"    # Ljava/text/DecimalFormat;
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1078
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 1079
    return-void
.end method


# virtual methods
.method public addFormat(Ljava/lang/String;Ljava/text/Format;)V
    .locals 1
    .param p1, "excelFormatStr"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/Format;

    .line 1049
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    return-void
.end method

.method public createFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 381
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 382
    .local v0, "formatIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "formatStr":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v2

    return-object v2
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "evaluator"    # Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "evaluator"    # Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .param p3, "cfEvaluator"    # Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;

    .line 975
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    .line 977
    const-string v0, ""

    if-nez p1, :cond_0

    .line 978
    return-object v0

    .line 981
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    .line 982
    .local v1, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_2

    .line 983
    if-nez p2, :cond_1

    .line 984
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 986
    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    .line 988
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v0, 0x5

    if-ne v2, v0, :cond_3

    .line 1004
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1006
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected celltype ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_4
    return-object v0

    .line 1000
    :cond_5
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TRUE"

    goto :goto_0

    :cond_6
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 997
    :cond_7
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 991
    :cond_8
    invoke-static {p1, p3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 992
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 994
    :cond_9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;

    .line 856
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;
    .param p5, "use1904Windowing"    # Z

    .line 864
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    .line 867
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 870
    .local v0, "dateFormat":Ljava/text/Format;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v1, :cond_0

    .line 872
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 874
    :cond_0
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v1

    .line 875
    .local v1, "d":Ljava/util/Date;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 878
    .end local v0    # "dateFormat":Ljava/text/Format;
    .end local v1    # "d":Ljava/util/Date;
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz v0, :cond_2

    .line 879
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    return-object v0

    .line 884
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 885
    .local v0, "numberFormat":Ljava/text/Format;
    if-nez v0, :cond_3

    .line 886
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 895
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "textValue":Ljava/lang/String;
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_4

    .line 897
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_0

    .line 900
    .end local v3    # "result":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 903
    .restart local v3    # "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_5

    const-string v2, "E-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 904
    const-string v2, "E"

    const-string v4, "E+"

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 906
    :cond_5
    return-object v3
.end method

.method public getDefaultFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 779
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleChangedObservable()Ljava/util/Observable;
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    return-object v0
.end method

.method public setDefaultNumberFormat(Ljava/text/Format;)V
    .locals 4
    .param p1, "format"    # Ljava/text/Format;

    .line 1029
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1030
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    if-ne v2, v3, :cond_0

    .line 1031
    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    :cond_0
    goto :goto_0

    .line 1034
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    .line 1035
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "localeObj"    # Ljava/lang/Object;

    .line 1102
    instance-of v0, p2, Ljava/util/Locale;

    if-nez v0, :cond_0

    return-void

    .line 1103
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    .line 1104
    .local v0, "newLocale":Ljava/util/Locale;
    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1106
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    .line 1108
    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    .line 1109
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 1110
    new-instance v1, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    .line 1113
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    .line 1114
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1118
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1119
    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    .line 1120
    .local v1, "zipFormat":Ljava/text/Format;
    const-string v2, "00000\\-0000"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1121
    const-string v2, "00000-0000"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1123
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    .line 1125
    .local v2, "phoneFormat":Ljava/text/Format;
    const-string v3, "[<=9999999]###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1126
    const-string v3, "[<=9999999]###-####;(###) ###-####"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1127
    const-string v3, "###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1128
    const-string v3, "###-####;(###) ###-####"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1130
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;->instance:Ljava/text/Format;

    .line 1131
    .local v3, "ssnFormat":Ljava/text/Format;
    const-string v4, "000\\-00\\-0000"

    invoke-virtual {p0, v4, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1132
    const-string v4, "000-00-0000"

    invoke-virtual {p0, v4, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 1133
    return-void

    .line 1104
    .end local v1    # "zipFormat":Ljava/text/Format;
    .end local v2    # "phoneFormat":Ljava/text/Format;
    .end local v3    # "ssnFormat":Ljava/text/Format;
    :cond_2
    :goto_0
    return-void
.end method
