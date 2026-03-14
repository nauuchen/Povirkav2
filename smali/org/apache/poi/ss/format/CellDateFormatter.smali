.class public Lorg/apache/poi/ss/format/CellDateFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellDateFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    }
.end annotation


# static fields
.field private static SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;


# instance fields
.field private final EXCEL_EPOCH_CAL:Ljava/util/Calendar;

.field private amPmUpper:Z

.field private final dateFmt:Ljava/text/DateFormat;

.field private sFmt:Ljava/lang/String;

.field private showAmPm:Z

.field private showM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 141
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 41
    const/16 v0, 0x770

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    .line 152
    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V

    .line 153
    .local v0, "partHandler":Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {p2, v1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 155
    .local v1, "descBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->finish(Ljava/lang/StringBuffer;)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "((y)(?!y))(?<!yy)"

    const-string/jumbo v4, "yy"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "ptrn":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    .line 160
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 161
    return-void
.end method

.method static synthetic access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .line 34
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .line 34
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p1
.end method

.method static synthetic access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    return p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 18
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 165
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez p2, :cond_0

    .line 166
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 165
    .end local v0    # "value":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p2

    .line 167
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    instance-of v3, v0, Ljava/lang/Number;

    const-wide/16 v4, 0x3e8

    if-eqz v3, :cond_2

    .line 168
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    .line 169
    .local v3, "num":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 170
    .local v6, "v":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 171
    iget-object v8, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 173
    :cond_1
    iget-object v8, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 174
    .local v8, "c":Ljava/util/Calendar;
    const/16 v9, 0xd

    div-long v10, v6, v4

    long-to-int v11, v10

    invoke-virtual {v8, v9, v11}, Ljava/util/Calendar;->add(II)V

    .line 175
    const/16 v9, 0xe

    rem-long v10, v6, v4

    long-to-int v11, v10

    invoke-virtual {v8, v9, v11}, Ljava/util/Calendar;->add(II)V

    .line 176
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 167
    .end local v3    # "num":Ljava/lang/Number;
    .end local v6    # "v":J
    .end local v8    # "c":Ljava/util/Calendar;
    :cond_2
    move-object v3, v0

    .line 180
    .end local v0    # "value":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    :goto_1
    iget-object v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    .line 181
    .local v6, "it":Ljava/text/AttributedCharacterIterator;
    const/4 v0, 0x0

    .line 182
    .local v0, "doneAm":Z
    const/4 v7, 0x0

    .line 184
    .local v7, "doneMillis":Z
    invoke-interface {v6}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 185
    invoke-interface {v6}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v8

    move v9, v8

    move v8, v7

    move v7, v0

    .line 186
    .end local v0    # "doneAm":Z
    .local v7, "doneAm":Z
    .local v8, "doneMillis":Z
    .local v9, "ch":C
    :goto_2
    const v0, 0xffff

    if-eq v9, v0, :cond_9

    .line 188
    sget-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    invoke-interface {v6, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 189
    if-nez v8, :cond_3

    .line 190
    move-object v10, v3

    check-cast v10, Ljava/util/Date;

    .line 191
    .local v10, "dateObj":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 192
    .local v11, "pos":I
    new-instance v0, Ljava/util/Formatter;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v2, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v12, v0

    .line 194
    .local v12, "formatter":Ljava/util/Formatter;
    :try_start_0
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    rem-long/2addr v13, v4

    .line 195
    .local v13, "msecs":J
    iget-object v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->locale:Ljava/util/Locale;

    iget-object v15, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 p2, v6

    .end local v6    # "it":Ljava/text/AttributedCharacterIterator;
    .local p2, "it":Ljava/text/AttributedCharacterIterator;
    long-to-double v5, v13

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v5, v5, v16

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v12, v0, v15, v4}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    nop

    .end local v13    # "msecs":J
    invoke-virtual {v12}, Ljava/util/Formatter;->close()V

    .line 198
    nop

    .line 199
    add-int/lit8 v0, v11, 0x2

    invoke-virtual {v2, v11, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 200
    const/4 v0, 0x1

    .line 201
    .end local v8    # "doneMillis":Z
    .end local v10    # "dateObj":Ljava/util/Date;
    .end local v11    # "pos":I
    .end local v12    # "formatter":Ljava/util/Formatter;
    .local v0, "doneMillis":Z
    move-object/from16 v4, p2

    move v8, v0

    goto :goto_5

    .line 197
    .end local v0    # "doneMillis":Z
    .restart local v8    # "doneMillis":Z
    .restart local v10    # "dateObj":Ljava/util/Date;
    .restart local v11    # "pos":I
    .restart local v12    # "formatter":Ljava/util/Formatter;
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local p2    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local v6    # "it":Ljava/text/AttributedCharacterIterator;
    :catchall_1
    move-exception v0

    move-object/from16 p2, v6

    .end local v6    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local p2    # "it":Ljava/text/AttributedCharacterIterator;
    :goto_3
    invoke-virtual {v12}, Ljava/util/Formatter;->close()V

    throw v0

    .line 189
    .end local v10    # "dateObj":Ljava/util/Date;
    .end local v11    # "pos":I
    .end local v12    # "formatter":Ljava/util/Formatter;
    .end local p2    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local v6    # "it":Ljava/text/AttributedCharacterIterator;
    :cond_3
    move-object/from16 p2, v6

    .end local v6    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local p2    # "it":Ljava/text/AttributedCharacterIterator;
    move-object/from16 v4, p2

    goto :goto_5

    .line 202
    .end local p2    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local v6    # "it":Ljava/text/AttributedCharacterIterator;
    :cond_4
    move-object/from16 p2, v6

    .end local v6    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local p2    # "it":Ljava/text/AttributedCharacterIterator;
    sget-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    move-object/from16 v4, p2

    .end local p2    # "it":Ljava/text/AttributedCharacterIterator;
    .local v4, "it":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v4, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 203
    if-nez v7, :cond_8

    .line 204
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    if-eqz v0, :cond_6

    .line 205
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    if-eqz v0, :cond_5

    .line 206
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v0, :cond_6

    .line 208
    const/16 v0, 0x4d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 210
    :cond_5
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v0, :cond_6

    .line 212
    const/16 v0, 0x6d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    :cond_6
    :goto_4
    const/4 v0, 0x1

    move v7, v0

    .end local v7    # "doneAm":Z
    .local v0, "doneAm":Z
    goto :goto_5

    .line 218
    .end local v0    # "doneAm":Z
    .restart local v7    # "doneAm":Z
    :cond_7
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v9

    move-object v6, v4

    const-wide/16 v4, 0x3e8

    goto/16 :goto_2

    .line 221
    .end local v4    # "it":Ljava/text/AttributedCharacterIterator;
    .end local v9    # "ch":C
    .restart local v6    # "it":Ljava/text/AttributedCharacterIterator;
    :cond_9
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 229
    const-class v0, Lorg/apache/poi/ss/format/CellDateFormatter;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/format/CellDateFormatter;

    const-string v2, "mm/d/y"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    .line 233
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellDateFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
