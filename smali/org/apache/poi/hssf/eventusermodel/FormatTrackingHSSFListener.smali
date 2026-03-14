.class public Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;
.super Ljava/lang/Object;
.source "FormatTrackingHSSFListener.java"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

.field private final _customFormatRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _defaultFormat:Ljava/text/NumberFormat;

.field private final _formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

.field private final _xfRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ExtendedFormatRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 1
    .param p1, "childListener"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 58
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;-><init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;Ljava/util/Locale;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;Ljava/util/Locale;)V
    .locals 1
    .param p1, "childListener"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_customFormatRecords:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_xfRecords:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 71
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-direct {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    .line 72
    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_defaultFormat:Ljava/text/NumberFormat;

    .line 73
    return-void
.end method


# virtual methods
.method public formatNumberDateCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 126
    instance-of v0, p1, Lorg/apache/poi/hssf/record/NumberRecord;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    .local v0, "value":D
    goto :goto_0

    .line 128
    .end local v0    # "value":D
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;

    if-eqz v0, :cond_2

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v0

    .line 135
    .restart local v0    # "value":D
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->getFormatIndex(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I

    move-result v2

    .line 136
    .local v2, "formatIndex":I
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->getFormatString(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "formatString":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 139
    iget-object v4, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_defaultFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 143
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 131
    .end local v0    # "value":D
    .end local v2    # "formatIndex":I
    .end local v3    # "formatString":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CellValue Record passed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormatIndex(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I
    .locals 7
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 193
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_xfRecords:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 194
    .local v0, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    if-nez v0, :cond_0

    .line 195
    sget-object v1, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cell "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uses XF with index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but we don\'t have that"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 197
    const/4 v1, -0x1

    return v1

    .line 199
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v1

    return v1
.end method

.method public getFormatString(I)Ljava/lang/String;
    .locals 8
    .param p1, "formatIndex"    # I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getNumberOfBuiltinBuiltinFormats()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_customFormatRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 157
    .local v1, "tfr":Lorg/apache/poi/hssf/record/FormatRecord;
    if-nez v1, :cond_0

    .line 158
    sget-object v2, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested format at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but it wasn\'t found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .end local v1    # "tfr":Lorg/apache/poi/hssf/record/FormatRecord;
    :goto_0
    goto :goto_1

    .line 164
    :cond_1
    int-to-short v1, p1

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getBuiltinFormat(S)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_1
    return-object v0
.end method

.method public getFormatString(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->getFormatIndex(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I

    move-result v0

    .line 178
    .local v0, "formatIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->getFormatString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getNumberOfCustomFormats()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_customFormatRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected getNumberOfExtendedFormats()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_xfRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 93
    return-void
.end method

.method public processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 102
    instance-of v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;

    if-eqz v0, :cond_0

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 104
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_customFormatRecords:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 108
    .local v0, "xr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->_xfRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v0    # "xr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_1
    return-void
.end method
