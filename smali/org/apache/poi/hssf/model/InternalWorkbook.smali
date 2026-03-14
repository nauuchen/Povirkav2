.class public final Lorg/apache/poi/hssf/model/InternalWorkbook;
.super Ljava/lang/Object;
.source "InternalWorkbook.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CODEPAGE:S = 0x4b0s

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final MAX_SENSITIVE_SHEET_NAME_LEN:I = 0x1f

.field public static final OLD_WORKBOOK_DIR_ENTRY_NAME:Ljava/lang/String; = "Book"

.field public static final WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;


# instance fields
.field private final boundsheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final commentRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

.field private escherBSERecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherBSERecord;",
            ">;"
        }
    .end annotation
.end field

.field private fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private linkTable:Lorg/apache/poi/hssf/model/LinkTable;

.field private maxformatid:I

.field private numfonts:I

.field private numxfs:I

.field private final records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

.field protected sst:Lorg/apache/poi/hssf/record/SSTRecord;

.field private uses1904datewindowing:Z

.field private windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

.field private writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

.field private writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    const-string v0, "Workbook"

    const-string v1, "WORKBOOK"

    const-string v2, "BOOK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    .line 147
    const-class v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 204
    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 205
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 206
    iput-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    .line 209
    return-void
.end method

.method private checkSheets(I)V
    .locals 3
    .param p1, "sheetnum"    # I

    .line 763
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 764
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    .line 767
    invoke-static {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    .line 769
    .local v0, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 770
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 771
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    .line 773
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    goto :goto_0

    .line 765
    .end local v0    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sheet number out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_1
    :goto_0
    return-void
.end method

.method private static createBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    .line 1103
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    .line 1105
    .local v0, "retval":Lorg/apache/poi/hssf/record/BOFRecord;
    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setVersion(I)V

    .line 1106
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setType(I)V

    .line 1107
    const/16 v1, 0x10d3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuild(I)V

    .line 1108
    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuildYear(I)V

    .line 1110
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setHistoryBitMask(I)V

    .line 1111
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setRequiredVersion(I)V

    .line 1112
    return-object v0
.end method

.method private static createBackup()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    .line 1246
    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>()V

    .line 1248
    .local v0, "retval":Lorg/apache/poi/hssf/record/BackupRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    .line 1249
    return-object v0
.end method

.method private static createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;
    .locals 2

    .line 1291
    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>()V

    .line 1292
    .local v0, "retval":Lorg/apache/poi/hssf/record/BookBoolRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BookBoolRecord;->setSaveLinkValues(S)V

    .line 1293
    return-object v0
.end method

.method private static createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 3
    .param p0, "id"    # I

    .line 1455
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sheet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;
    .locals 2

    .line 1149
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>()V

    .line 1151
    .local v0, "retval":Lorg/apache/poi/hssf/record/CodepageRecord;
    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CodepageRecord;->setCodepage(S)V

    .line 1152
    return-object v0
.end method

.method private static createCountry()Lorg/apache/poi/hssf/record/CountryRecord;
    .locals 4

    .line 1463
    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>()V

    .line 1465
    .local v0, "retval":Lorg/apache/poi/hssf/record/CountryRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setDefaultCountry(S)V

    .line 1468
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru_RU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1469
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setCurrentCountry(S)V

    goto :goto_0

    .line 1471
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setCurrentCountry(S)V

    .line 1474
    :goto_0
    return-object v0
.end method

.method private static createDSF()Lorg/apache/poi/hssf/record/DSFRecord;
    .locals 2

    .line 1156
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;
    .locals 2

    .line 1265
    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>()V

    .line 1267
    .local v0, "retval":Lorg/apache/poi/hssf/record/DateWindow1904Record;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->setWindowing(S)V

    .line 1268
    return-object v0
.end method

.method private static createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    .line 1393
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    .line 1395
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1396
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1397
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1398
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1399
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1400
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1401
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1402
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1403
    const/16 v1, 0x20c0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1404
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    .line 1405
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    .line 1406
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    .line 1407
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    .line 1408
    return-object v0
.end method

.method private static createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 8
    .param p0, "id"    # I

    .line 1337
    const/16 v0, 0x8

    const/4 v1, 0x6

    const/16 v2, -0xc00

    const/16 v3, 0x5c00

    const/16 v4, -0x800

    const/16 v5, -0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1368
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized format id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :pswitch_0
    invoke-static {v1, v0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1365
    :pswitch_1
    invoke-static {v7, v0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1364
    :pswitch_2
    const/16 v0, 0x31

    invoke-static {v7, v0, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1363
    :pswitch_3
    invoke-static {v1, v7, v6, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1362
    :pswitch_4
    const/4 v0, 0x5

    const/16 v1, 0x800

    invoke-static {v0, v7, v6, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1360
    :pswitch_5
    const/16 v0, 0x9

    invoke-static {v6, v0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1359
    :pswitch_6
    const/16 v0, 0x2a

    invoke-static {v6, v0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1358
    :pswitch_7
    const/16 v0, 0x2c

    invoke-static {v6, v0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1357
    :pswitch_8
    const/16 v0, 0x29

    invoke-static {v6, v0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1356
    :pswitch_9
    const/16 v0, 0x2b

    invoke-static {v6, v0, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1354
    :pswitch_a
    invoke-static {v7, v7, v6, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1352
    :pswitch_b
    invoke-static {v7, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1342
    :pswitch_c
    const/4 v0, 0x2

    invoke-static {v0, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1340
    :pswitch_d
    invoke-static {v6, v7, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    .line 1338
    :pswitch_e
    invoke-static {v7, v7, v5, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createExtendedFormat(IIII)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 2
    .param p0, "fontIndex"    # I
    .param p1, "formatIndex"    # I
    .param p2, "cellOptions"    # I
    .param p3, "indentionOptions"    # I

    .line 1375
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    .line 1376
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1377
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1378
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1379
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1380
    int-to-short v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1382
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1383
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1384
    const/16 v1, 0x20c0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1385
    return-object v0
.end method

.method private static createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 2

    .line 1483
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    .line 1484
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtSSTRecord;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    .line 1485
    return-object v0
.end method

.method private static createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;
    .locals 2

    .line 1170
    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>()V

    .line 1172
    .local v0, "retval":Lorg/apache/poi/hssf/record/FnGroupCountRecord;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;->setCount(S)V

    .line 1173
    return-object v0
.end method

.method private static createFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 2

    .line 1306
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>()V

    .line 1308
    .local v0, "retval":Lorg/apache/poi/hssf/record/FontRecord;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontHeight(S)V

    .line 1309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setAttributes(S)V

    .line 1310
    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setColorPaletteIndex(S)V

    .line 1311
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    .line 1312
    const-string v1, "Arial"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontName(Ljava/lang/String;)V

    .line 1313
    return-object v0
.end method

.method private static createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 4
    .param p0, "id"    # I

    .line 1323
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1324
    .local v0, "mappings":[I
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 1327
    new-instance v1, Lorg/apache/poi/hssf/record/FormatRecord;

    aget v2, v0, p0

    aget v3, v0, p0

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 1325
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x2a
        0x29
        0x2c
        0x2b
    .end array-data
.end method

.method private static createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;
    .locals 2

    .line 1256
    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>()V

    .line 1257
    .local v0, "retval":Lorg/apache/poi/hssf/record/HideObjRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HideObjRecord;->setHideObj(S)V

    .line 1258
    return-object v0
.end method

.method private static createMMS()Lorg/apache/poi/hssf/record/MMSRecord;
    .locals 2

    .line 1117
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>()V

    .line 1119
    .local v0, "retval":Lorg/apache/poi/hssf/record/MMSRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setAddMenuCount(B)V

    .line 1120
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setDelMenuCount(B)V

    .line 1121
    return-object v0
.end method

.method private static createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 1

    .line 1436
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>()V

    return-object v0
.end method

.method private static createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 2

    .line 1198
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(I)V

    return-object v0
.end method

.method private static createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;
    .locals 2

    .line 1212
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(I)V

    return-object v0
.end method

.method private static createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;
    .locals 2

    .line 1275
    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>()V

    .line 1276
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrecisionRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrecisionRecord;->setFullPrecision(Z)V

    .line 1277
    return-object v0
.end method

.method private static createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;
    .locals 2

    .line 1191
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;
    .locals 2

    .line 1205
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Z)V

    return-object v0
.end method

.method private static createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;
    .locals 2

    .line 1284
    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 6
    .param p0, "id"    # I

    .line 1418
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1421
    .local v0, "mappings":[[I
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 1425
    new-instance v1, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    .line 1426
    .local v1, "retval":Lorg/apache/poi/hssf/record/StyleRecord;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1427
    aget-object v2, v0, p0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1428
    aget-object v2, v0, p0

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1429
    return-object v1

    .line 1422
    .end local v1    # "retval":Lorg/apache/poi/hssf/record/StyleRecord;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected style id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x14
        0x5
    .end array-data
.end method

.method private static createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;
    .locals 1

    .line 1163
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>()V

    return-object v0
.end method

.method private static createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;
    .locals 2

    .line 1443
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 2

    .line 1228
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>()V

    .line 1230
    .local v0, "retval":Lorg/apache/poi/hssf/record/WindowOneRecord;
    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHorizontalHold(S)V

    .line 1231
    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setVerticalHold(S)V

    .line 1232
    const/16 v1, 0x3a5c

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setWidth(S)V

    .line 1233
    const/16 v1, 0x23be

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHeight(S)V

    .line 1234
    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setOptions(S)V

    .line 1235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    .line 1236
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    .line 1237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 1238
    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setTabWidthRatio(S)V

    .line 1239
    return-object v0
.end method

.method private static createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;
    .locals 2

    .line 1182
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method public static createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 10

    .line 369
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "creating new workbook from scratch"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 371
    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    .line 372
    .local v0, "retval":Lorg/apache/poi/hssf/model/InternalWorkbook;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    .line 374
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    .line 376
    .local v3, "formats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/FormatRecord;>;"
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBOF()Lorg/apache/poi/hssf/record/BOFRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v5, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    const/16 v6, 0x4b0

    invoke-direct {v5, v6}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createMMS()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v5, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDSF()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 385
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 389
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 393
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBackup()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 396
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 406
    const/4 v5, 0x4

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 409
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x7

    if-gt v5, v6, :cond_1

    .line 410
    invoke-static {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object v6

    .line 411
    .local v6, "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v8

    if-lt v7, v8, :cond_0

    iget v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v7

    :goto_1
    iput v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 412
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v6    # "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 416
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    const/16 v6, 0x15

    if-ge v5, v6, :cond_2

    .line 417
    invoke-static {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v6, v1

    iput v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 420
    .end local v5    # "k":I
    :cond_2
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 421
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_3
    const/4 v6, 0x6

    if-ge v5, v6, :cond_3

    .line 422
    invoke-static {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 424
    .end local v5    # "k":I
    :cond_3
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    const/4 v5, 0x1

    .line 427
    .local v5, "nBoundSheets":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_4
    if-ge v6, v5, :cond_4

    .line 428
    invoke-static {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v7

    .line 430
    .local v7, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v8, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 427
    .end local v7    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 434
    .end local v6    # "k":I
    :cond_4
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCountry()Lorg/apache/poi/hssf/record/CountryRecord;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_5
    if-ge v6, v5, :cond_5

    .line 436
    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 438
    .end local v6    # "k":I
    :cond_5
    new-instance v6, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 439
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v6, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v6, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "exit create new workbook from scratch"

    aput-object v8, v7, v4

    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 445
    return-object v0
.end method

.method public static createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)",
            "Lorg/apache/poi/hssf/model/InternalWorkbook;"
        }
    .end annotation

    .line 224
    .local p0, "recs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Workbook (readfile) created with reclen="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v4, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    .line 226
    .local v0, "retval":Lorg/apache/poi/hssf/model/InternalWorkbook;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v2, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "eofPassed":Z
    const/4 v5, 0x0

    .local v5, "k":I
    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 231
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/hssf/record/Record;

    .line 233
    .local v9, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 338
    .local v6, "logObj":Ljava/lang/String;
    .local v7, "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    .local v8, "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(sid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 326
    .end local v8    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :sswitch_0
    const-string v6, "NameComment"

    .line 327
    move-object v8, v9

    check-cast v8, Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 328
    .restart local v8    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    goto/16 :goto_3

    .line 289
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    .end local v8    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :sswitch_1
    const-string v6, "format"

    .line 290
    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 291
    .restart local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v11

    if-lt v10, v11, :cond_0

    iget v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v10

    :goto_1
    iput v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 293
    goto/16 :goto_3

    .line 333
    .restart local v8    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :sswitch_2
    const-string v6, "Hyperlink"

    .line 334
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    move-object v11, v9

    check-cast v11, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    goto/16 :goto_3

    .line 263
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    .end local v8    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :sswitch_3
    const-string/jumbo v6, "tabid"

    .line 264
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 265
    goto/16 :goto_3

    .line 246
    :sswitch_4
    const-string v6, "sst"

    .line 247
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 248
    goto/16 :goto_3

    .line 257
    :sswitch_5
    const-string v6, "XF"

    .line 258
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 259
    iget v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v10, v4

    iput v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 260
    goto/16 :goto_3

    .line 301
    .restart local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_6
    const-string v6, "palette"

    .line 302
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 303
    goto/16 :goto_3

    .line 316
    :sswitch_7
    const-string v6, "WriteProtect"

    .line 317
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 318
    goto/16 :goto_3

    .line 240
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_8
    const-string v6, "boundsheet"

    .line 241
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    move-object v11, v9

    check-cast v11, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 243
    goto/16 :goto_3

    .line 311
    .restart local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_9
    const-string v6, "WriteAccess"

    .line 312
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    .line 313
    goto/16 :goto_3

    .line 321
    :sswitch_a
    const-string v6, "FileSharing"

    .line 322
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/FileSharingRecord;

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 323
    goto/16 :goto_3

    .line 273
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_b
    const-string v6, "backup"

    .line 274
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 275
    goto :goto_3

    .line 306
    .restart local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_c
    const-string v6, "WindowOneRecord"

    .line 307
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/WindowOneRecord;

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 308
    goto :goto_3

    .line 251
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_d
    const-string v6, "font"

    .line 252
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 253
    iget v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/2addr v10, v4

    iput v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 254
    goto :goto_3

    .line 296
    .restart local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_e
    const-string v6, "datewindow1904"

    .line 297
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->getWindowing()S

    move-result v10

    if-ne v10, v4, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    .line 298
    goto :goto_3

    .line 283
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormatRecord;
    :sswitch_f
    sget-object v10, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v11, v4, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found SupBook record at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v10, v4, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 284
    new-instance v10, Lorg/apache/poi/hssf/model/LinkTable;

    iget-object v11, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v12, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-direct {v10, p0, v5, v11, v12}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V

    iput-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    .line 285
    invoke-virtual {v10}, Lorg/apache/poi/hssf/model/LinkTable;->getRecordCount()I

    move-result v10

    sub-int/2addr v10, v4

    add-int/2addr v5, v10

    .line 286
    goto :goto_4

    .line 233
    .end local v6    # "logObj":Ljava/lang/String;
    :sswitch_10
    move-object v3, v6

    .line 278
    .local v3, "logObj":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/util/RecordFormatException;

    const-string v6, "Extern sheet is part of LinkTable"

    invoke-direct {v4, v6}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    .end local v3    # "logObj":Ljava/lang/String;
    .restart local v6    # "logObj":Ljava/lang/String;
    :sswitch_11
    const-string v6, "protect"

    .line 269
    iget-object v10, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 270
    goto :goto_3

    .line 236
    .end local v6    # "logObj":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v6, "workbook eof"

    .line 237
    .restart local v6    # "logObj":Ljava/lang/String;
    nop

    .line 341
    :goto_3
    if-nez v2, :cond_2

    .line 342
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_2
    sget-object v10, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v11, v4, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " record at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v10, v4, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 346
    const/4 v2, 0x1

    .line 230
    .end local v6    # "logObj":Ljava/lang/String;
    .end local v9    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    :goto_4
    add-int/2addr v5, v4

    goto/16 :goto_0

    .line 355
    .end local v5    # "k":I
    :cond_4
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    if-nez v5, :cond_5

    .line 356
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 358
    :cond_5
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "exit create workbook from existing file function"

    aput-object v7, v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 359
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_12
        0x12 -> :sswitch_11
        0x17 -> :sswitch_10
        0x18 -> :sswitch_f
        0x22 -> :sswitch_e
        0x31 -> :sswitch_d
        0x3d -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_a
        0x5c -> :sswitch_9
        0x85 -> :sswitch_8
        0x86 -> :sswitch_7
        0x92 -> :sswitch_6
        0xe0 -> :sswitch_5
        0xfc -> :sswitch_4
        0x13d -> :sswitch_3
        0x1ae -> :sswitch_f
        0x1b8 -> :sswitch_2
        0x41e -> :sswitch_1
        0x894 -> :sswitch_0
    .end sparse-switch
.end method

.method private static createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 8

    .line 1128
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>()V

    .line 1130
    .local v0, "retval":Lorg/apache/poi/hssf/record/WriteAccessRecord;
    const-string v1, "POI"

    .line 1132
    .local v1, "defaultUserName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "username":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1135
    move-object v2, v1

    .line 1138
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    .end local v2    # "username":Ljava/lang/String;
    goto :goto_0

    .line 1139
    :catch_0
    move-exception v2

    .line 1140
    .local v2, "e":Ljava/security/AccessControlException;
    sget-object v3, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "can\'t determine user.name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 1145
    .end local v2    # "e":Ljava/security/AccessControlException;
    :goto_0
    return-object v0
.end method

.method private static findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 8
    .param p0, "dg"    # Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/DrawingGroupRecord;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherBSERecord;",
            ">;)",
            "Lorg/apache/poi/hssf/model/DrawingManager2;"
        }
    .end annotation

    .line 1878
    .local p1, "escherBSERecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherBSERecord;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1879
    return-object v0

    .line 1882
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    .line 1883
    .local v1, "cr":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-nez v1, :cond_1

    .line 1884
    return-object v0

    .line 1887
    :cond_1
    const/4 v2, 0x0

    .line 1888
    .local v2, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    const/4 v3, 0x0

    .line 1889
    .local v3, "bStore":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherRecord;

    .line 1890
    .local v5, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v6, v5, Lorg/apache/poi/ddf/EscherDggRecord;

    if-eqz v6, :cond_2

    .line 1891
    move-object v2, v5

    check-cast v2, Lorg/apache/poi/ddf/EscherDggRecord;

    goto :goto_1

    .line 1892
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v6

    const/16 v7, -0xfff

    if-ne v6, v7, :cond_3

    .line 1893
    move-object v3, v5

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    .end local v5    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :cond_3
    :goto_1
    goto :goto_0

    .line 1897
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_5

    .line 1898
    return-object v0

    .line 1901
    :cond_5
    new-instance v0, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    .line 1902
    .local v0, "dm":Lorg/apache/poi/hssf/model/DrawingManager2;
    if-eqz v3, :cond_7

    .line 1903
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherRecord;

    .line 1904
    .local v5, "bs":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v6, v5, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v6, :cond_6

    .line 1905
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "bs":Lorg/apache/poi/ddf/EscherRecord;
    :cond_6
    goto :goto_2

    .line 1909
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    return-object v0
.end method

.method private findSheetNameFromIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "internalSheetIndex"    # I

    .line 1517
    const-string v0, ""

    if-gez p1, :cond_0

    .line 1520
    return-object v0

    .line 1522
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1524
    return-object v0

    .line 1526
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fixTabIdRecord()V
    .locals 5

    .line 819
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 824
    .local v0, "rec":Lorg/apache/poi/hssf/record/Record;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    if-gtz v1, :cond_0

    .line 825
    return-void

    .line 828
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/TabIdRecord;

    .line 829
    .local v1, "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [S

    .line 831
    .local v2, "tia":[S
    const/4 v3, 0x0

    .local v3, "k":S
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 832
    aput-short v3, v2, v3

    .line 831
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    goto :goto_0

    .line 834
    .end local v3    # "k":S
    :cond_1
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TabIdRecord;->setTabIdArray([S)V

    .line 835
    return-void
.end method

.method private getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 577
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    return-object v0
.end method

.method private getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;
    .locals 3

    .line 1493
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    .line 1494
    new-instance v0, Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumSheets()I

    move-result v1

    int-to-short v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(ILorg/apache/poi/hssf/model/WorkbookRecordList;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    .line 1496
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    return-object v0
.end method


# virtual methods
.method public addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I
    .locals 6
    .param p1, "e"    # Lorg/apache/poi/ddf/EscherBSERecord;

    .line 1986
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 1989
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1991
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1992
    .local v0, "dgLoc":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 1994
    .local v1, "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecord(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 1996
    .local v2, "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v4

    const/16 v5, -0xfff

    if-ne v4, v5, :cond_0

    .line 1998
    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    .local v3, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    goto :goto_0

    .line 2000
    .end local v3    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_0
    new-instance v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 2001
    .local v4, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 2002
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v5

    .line 2003
    .local v5, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2004
    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setChildRecords(Ljava/util/List;)V

    move-object v3, v4

    .line 2006
    .end local v4    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v5    # "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .restart local v3    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 2008
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2010
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    return v4
.end method

.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 1642
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addName(Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 1643
    return-object p1
.end method

.method public addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 4
    .param p1, "string"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 989
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "insert to sst string=\'"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 990
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    .line 993
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .line 2256
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkExternSheet(I)S
    .locals 1
    .param p1, "sheetNumber"    # I

    .line 1577
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public checkExternSheet(II)S
    .locals 1
    .param p1, "firstSheetNumber"    # I
    .param p2, "lastSheetNumber"    # I

    .line 1587
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public cloneDrawings(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 19
    .param p1, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .line 2124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2126
    iget-object v2, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v2, :cond_0

    .line 2128
    return-void

    .line 2132
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v2

    .line 2133
    .local v2, "aggLoc":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 2134
    return-void

    .line 2137
    :cond_1
    const/16 v4, 0x2694

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 2138
    .local v4, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v5

    .line 2139
    .local v5, "escherContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-nez v5, :cond_2

    .line 2140
    return-void

    .line 2143
    :cond_2
    iget-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/DrawingManager2;->getDgg()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object v6

    .line 2146
    .local v6, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v7

    .line 2147
    .local v7, "dgId":I
    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 2148
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 2150
    const/4 v3, 0x0

    .line 2151
    .local v3, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ddf/EscherRecord;

    .line 2152
    .local v9, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v10, v9, Lorg/apache/poi/ddf/EscherDgRecord;

    if-eqz v10, :cond_3

    .line 2153
    move-object v3, v9

    check-cast v3, Lorg/apache/poi/ddf/EscherDgRecord;

    .line 2155
    shl-int/lit8 v10, v7, 0x4

    int-to-short v10, v10

    invoke-virtual {v3, v10}, Lorg/apache/poi/ddf/EscherDgRecord;->setOptions(S)V

    move/from16 v17, v2

    goto/16 :goto_5

    .line 2156
    :cond_3
    instance-of v10, v9, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v10, :cond_a

    .line 2158
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v10}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ddf/EscherRecord;

    .line 2159
    .local v11, "er2":Lorg/apache/poi/ddf/EscherRecord;
    move-object v12, v11

    check-cast v12, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v12}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ddf/EscherRecord;

    .line 2160
    .local v13, "shapeChildRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v13}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v14

    .line 2161
    .local v14, "recordId":I
    const/16 v15, -0xff6

    if-ne v14, v15, :cond_5

    .line 2162
    if-eqz v3, :cond_4

    .line 2165
    move-object v15, v13

    check-cast v15, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 2166
    .local v15, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    iget-object v1, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I

    move-result v1

    .line 2168
    .local v1, "shapeId":I
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v16

    move/from16 v17, v2

    .end local v2    # "aggLoc":I
    .local v17, "aggLoc":I
    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 2169
    invoke-virtual {v15, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .end local v1    # "shapeId":I
    .end local v15    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    goto :goto_3

    .line 2163
    .end local v17    # "aggLoc":I
    .restart local v2    # "aggLoc":I
    :cond_4
    move/from16 v17, v2

    .end local v2    # "aggLoc":I
    .restart local v17    # "aggLoc":I
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    const-string v2, "EscherDgRecord wasn\'t set/processed before."

    invoke-direct {v1, v2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2170
    .end local v17    # "aggLoc":I
    .restart local v2    # "aggLoc":I
    :cond_5
    move/from16 v17, v2

    .end local v2    # "aggLoc":I
    .restart local v17    # "aggLoc":I
    const/16 v1, -0xff5

    if-ne v14, v1, :cond_7

    .line 2171
    move-object v1, v13

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 2172
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v2, 0x104

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 2174
    .local v2, "prop":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-eqz v2, :cond_6

    .line 2175
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v15

    .line 2177
    .local v15, "pictureIndex":I
    move-object/from16 v16, v1

    .end local v1    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .local v16, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    invoke-virtual {v0, v15}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 2178
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v18

    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    goto :goto_4

    .line 2174
    .end local v15    # "pictureIndex":I
    .end local v16    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .restart local v16    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    goto :goto_4

    .line 2170
    .end local v2    # "prop":Lorg/apache/poi/ddf/EscherSimpleProperty;
    .end local v16    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_7
    :goto_3
    nop

    .line 2182
    .end local v13    # "shapeChildRecord":Lorg/apache/poi/ddf/EscherRecord;
    .end local v14    # "recordId":I
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    goto :goto_2

    .line 2159
    .end local v17    # "aggLoc":I
    .local v2, "aggLoc":I
    :cond_8
    move/from16 v17, v2

    .line 2182
    .end local v2    # "aggLoc":I
    .end local v11    # "er2":Lorg/apache/poi/ddf/EscherRecord;
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v17    # "aggLoc":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 2158
    .end local v17    # "aggLoc":I
    .restart local v2    # "aggLoc":I
    :cond_9
    move/from16 v17, v2

    .end local v2    # "aggLoc":I
    .restart local v17    # "aggLoc":I
    goto :goto_5

    .line 2156
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "aggLoc":I
    .restart local v2    # "aggLoc":I
    :cond_a
    move/from16 v17, v2

    .line 2182
    .end local v2    # "aggLoc":I
    .end local v9    # "er":Lorg/apache/poi/ddf/EscherRecord;
    .restart local v17    # "aggLoc":I
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 2186
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v17    # "aggLoc":I
    .restart local v2    # "aggLoc":I
    :cond_b
    return-void
.end method

.method public cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 6
    .param p1, "filterDbNameIndex"    # I
    .param p2, "newSheetIndex"    # I

    .line 2189
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 2191
    .local v0, "origNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v1

    .line 2192
    .local v1, "newExtSheetIx":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2193
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 2194
    aget-object v4, v2, v3

    .line 2196
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v5, :cond_0

    .line 2197
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 2198
    .local v5, "a3p":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v5, v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    .line 2199
    aput-object v5, v2, v3

    .end local v5    # "a3p":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    goto :goto_1

    .line 2200
    :cond_0
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v5, :cond_1

    .line 2201
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 2202
    .local v5, "r3p":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v5, v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 2203
    aput-object v5, v2, v3

    goto :goto_2

    .line 2200
    .end local v5    # "r3p":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    :goto_1
    nop

    .line 2193
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2206
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0xd

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 2207
    .local v3, "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2208
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/NameRecord;->setHidden(Z)V

    .line 2209
    return-object v3
.end method

.method public createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 4
    .param p1, "builtInName"    # B
    .param p2, "sheetNumber"    # I

    .line 1655
    if-ltz p2, :cond_1

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 1659
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(BI)V

    .line 1661
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/LinkTable;->nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1665
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    .line 1666
    return-object v0

    .line 1662
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builtin ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") already exists for sheet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1656
    .end local v0    # "name":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sheet number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]is not valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    .line 911
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 913
    .local v0, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 914
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 915
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 916
    return-object v0
.end method

.method public createDrawingGroup()V
    .locals 10

    .line 1917
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v0, :cond_3

    .line 1918
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 1919
    .local v0, "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherDggRecord;-><init>()V

    .line 1920
    .local v1, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 1921
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;-><init>()V

    .line 1923
    .local v3, "splitMenuColors":Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
    const/16 v4, -0x1000

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 1924
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 1925
    const/16 v5, -0xffa

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setRecordId(S)V

    .line 1926
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setOptions(S)V

    .line 1927
    const/16 v6, 0x400

    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    .line 1928
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setNumShapesSaved(I)V

    .line 1929
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 1930
    new-array v5, v5, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    .line 1931
    new-instance v5, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v5, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    iput-object v5, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 1932
    const/4 v5, 0x0

    .line 1933
    .local v5, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1935
    new-instance v6, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v6}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    move-object v5, v6

    .line 1936
    const/16 v6, -0xfff

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 1937
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 1938
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherBSERecord;

    .line 1939
    .local v6, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .end local v6    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 1942
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 1943
    const/16 v4, 0x33

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setOptions(S)V

    .line 1944
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v6, 0xbf

    const v7, 0x80008

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 1945
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x181

    const v7, 0x8000041

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 1946
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x1c0

    const v7, 0x8000040

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 1947
    const/16 v4, -0xee2

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setRecordId(S)V

    .line 1948
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setOptions(S)V

    .line 1949
    const v4, 0x800000d

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor1(I)V

    .line 1950
    const v4, 0x800000c

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor2(I)V

    .line 1951
    const v4, 0x8000017

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor3(I)V

    .line 1952
    const v4, 0x100000f7

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor4(I)V

    .line 1954
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 1955
    if-eqz v5, :cond_1

    .line 1956
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 1958
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 1959
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 1961
    const/16 v4, 0xeb

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v4

    .line 1962
    .local v4, "dgLoc":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 1963
    new-instance v6, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    .line 1964
    .local v6, "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 1965
    const/16 v7, 0x8c

    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v7

    .line 1967
    .local v7, "loc":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v8, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1968
    .end local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .end local v7    # "loc":I
    goto :goto_1

    .line 1969
    :cond_2
    new-instance v6, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    .line 1970
    .restart local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 1971
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1975
    .end local v0    # "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v1    # "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    .end local v2    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .end local v3    # "splitMenuColors":Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
    .end local v4    # "dgLoc":I
    .end local v5    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    :cond_3
    :goto_1
    return-void
.end method

.method public createFormat(Ljava/lang/String;)I
    .locals 4
    .param p1, "formatString"    # Ljava/lang/String;

    .line 1737
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    const/16 v1, 0xa4

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 1738
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    .line 1740
    .local v0, "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    const/4 v1, 0x0

    .line 1741
    .local v1, "pos":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    const/16 v3, 0x41e

    if-eq v2, v3, :cond_1

    .line 1742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1745
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1746
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 1747
    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    return v2
.end method

.method public createName()Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    .line 1631
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public createNewFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 3

    .line 530
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v0

    .line 532
    .local v0, "rec":Lorg/apache/poi/hssf/record/FontRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 533
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 534
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 535
    return-object v0
.end method

.method public createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 5
    .param p1, "xfIndex"    # I

    .line 955
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    .line 956
    .local v0, "newSR":Lorg/apache/poi/hssf/record/StyleRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 959
    const/4 v1, -0x1

    .line 960
    .local v1, "addAt":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    .line 961
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 962
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 963
    .local v3, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/apache/poi/hssf/record/StyleRecord;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 967
    :cond_0
    move v1, v2

    .line 961
    .end local v3    # "r":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    .end local v2    # "i":I
    :cond_2
    if-eq v1, v4, :cond_3

    .line 973
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 975
    return-object v0

    .line 971
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No XF Records found!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public doesContainsSheetName(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "excludeSheetIdx"    # I

    .line 617
    move-object v0, p1

    .line 618
    .local v0, "aName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_0

    .line 619
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 621
    :cond_0
    const/4 v1, 0x0

    .line 622
    .local v1, "i":I
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 623
    .local v5, "boundSheetRecord":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    if-ne p2, v1, :cond_1

    .line 624
    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "bName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_2

    .line 628
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 630
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 631
    const/4 v2, 0x1

    return v2

    .line 633
    .end local v1    # "bName":Ljava/lang/String;
    .end local v5    # "boundSheetRecord":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    :cond_3
    nop

    .line 622
    :goto_1
    move v1, v6

    goto :goto_0

    .line 634
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "i":I
    .local v1, "i":I
    :cond_4
    return v2
.end method

.method public findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 4

    .line 1852
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-eqz v0, :cond_0

    .line 1854
    return-object v0

    .line 1858
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 1859
    .local v1, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-nez v2, :cond_1

    .line 1860
    goto :goto_0

    .line 1862
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 1863
    .local v2, "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->processChildRecords()V

    .line 1864
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 1865
    if-eqz v3, :cond_2

    .line 1866
    return-object v3

    .line 1868
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v2    # "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    :cond_2
    goto :goto_0

    .line 1872
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 1873
    .local v0, "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingManager(Lorg/apache/poi/hssf/record/DrawingGroupRecord;Ljava/util/List;)Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 1874
    return-object v1
.end method

.method public findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;
    .locals 3
    .param p1, "sid"    # S

    .line 1760
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 1761
    .local v1, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1762
    return-object v1

    .end local v1    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    goto :goto_0

    .line 1765
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFirstRecordLocBySid(S)I
    .locals 4
    .param p1, "sid"    # S

    .line 1774
    const/4 v0, 0x0

    .line 1775
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 1776
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1777
    return v0

    .line 1779
    :cond_0
    nop

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1781
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public findNextRecordBySid(SI)Lorg/apache/poi/hssf/record/Record;
    .locals 4
    .param p1, "sid"    # S
    .param p2, "pos"    # I

    .line 1793
    const/4 v0, 0x0

    .line 1794
    .local v0, "matches":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 1795
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_1

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "matches":I
    .local v3, "matches":I
    if-ne v0, p2, :cond_0

    .line 1796
    return-object v2

    .line 1795
    :cond_0
    move v0, v3

    .line 1796
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "matches":I
    .restart local v0    # "matches":I
    :cond_1
    goto :goto_0

    .line 1799
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public findSheetFirstNameFromExternSheet(I)Ljava/lang/String;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 1509
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result v0

    .line 1510
    .local v0, "indexToSheet":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public findSheetLastNameFromExternSheet(I)Ljava/lang/String;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 1513
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result v0

    .line 1514
    .local v0, "indexToSheet":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 2
    .param p1, "pictureIndex"    # I

    .line 1982
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherBSERecord;

    return-object v0
.end method

.method public getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    .line 586
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BackupRecord;

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 5

    .line 1829
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    .line 1830
    .local v0, "palettePos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1831
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 1832
    .local v1, "rec":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/PaletteRecord;

    if-eqz v2, :cond_0

    .line 1833
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/PaletteRecord;

    .line 1837
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    .local v2, "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    goto :goto_0

    .line 1835
    .end local v2    # "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    .restart local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternalError: Expected PaletteRecord but got a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1838
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v2

    .line 1840
    .restart local v2    # "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 1841
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 1843
    :goto_0
    return-object v2
.end method

.method public getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 1

    .line 2015
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v0
.end method

.method public getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 2
    .param p1, "index"    # I

    .line 867
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 869
    .local v0, "xfptr":I
    add-int/2addr v0, p1

    .line 870
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 873
    .local v1, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    return-object v1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 3
    .param p1, "externSheetIndex"    # I
    .param p2, "externNameIndex"    # I

    .line 1541
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "nameName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1543
    const/4 v1, 0x0

    return-object v1

    .line 1545
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXIx(II)I

    move-result v1

    .line 1546
    .local v1, "ix":I
    new-instance v2, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    invoke-direct {v2, v0, p2, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 5
    .param p1, "externSheetIndex"    # I

    .line 1530
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalBookAndSheetName(I)[Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "extNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1532
    const/4 v1, 0x0

    return-object v1

    .line 1534
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1535
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1537
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    aget-object v4, v0, v4

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 1591
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "firstSheetName"    # Ljava/lang/String;
    .param p3, "lastSheetName"    # Ljava/lang/String;

    .line 1594
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;
    .locals 4

    .line 2037
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 2039
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 2040
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2042
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    return-object v0
.end method

.method public getFirstSheetIndexFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetNumber"    # I

    .line 1556
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result v0

    return v0
.end method

.method public getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I
    .locals 4
    .param p1, "font"    # Lorg/apache/poi/hssf/record/FontRecord;

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    if-gt v0, v1, :cond_2

    .line 511
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FontRecord;

    .line 513
    .local v1, "thisFont":Lorg/apache/poi/hssf/record/FontRecord;
    if-ne v1, p1, :cond_1

    .line 515
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 510
    .end local v1    # "thisFont":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not find that font!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;
    .locals 4
    .param p1, "idx"    # I

    .line 484
    move v0, p1

    .line 486
    .local v0, "index":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 487
    add-int/lit8 v0, v0, -0x1

    .line 489
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 494
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FontRecord;

    .line 497
    .local v1, "retval":Lorg/apache/poi/hssf/record/FontRecord;
    return-object v1

    .line 490
    .end local v1    # "retval":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " font records, you asked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat(Ljava/lang/String;Z)S
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "createIfNotFound"    # Z

    .line 1707
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 1708
    .local v1, "r":Lorg/apache/poi/hssf/record/FormatRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1709
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v2

    int-to-short v2, v2

    return v2

    .end local v1    # "r":Lorg/apache/poi/hssf/record/FormatRecord;
    :cond_0
    goto :goto_0

    .line 1713
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p2, :cond_2

    .line 1714
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1717
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    return-object v0
.end method

.method public getHyperlinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    return-object v0
.end method

.method public getLastSheetIndexFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetNumber"    # I

    .line 1567
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result v0

    return v0
.end method

.method public getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;
    .locals 2
    .param p1, "nameRecord"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 1623
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    return-object v0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "index"    # I

    .line 1614
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetRefIndex"    # I
    .param p3, "udf"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2102
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    .line 2103
    .local v0, "lnk":Lorg/apache/poi/hssf/model/LinkTable;
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameXPtg(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v1

    .line 2105
    .local v1, "xptg":Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    if-nez v1, :cond_0

    invoke-interface {p3, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2108
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v1

    .line 2110
    :cond_0
    return-object v1
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "udf"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2113
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v0

    return-object v0
.end method

.method public getNumExFormats()I
    .locals 4

    .line 855
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getXF="

    aput-object v3, v1, v2

    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 856
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return v0
.end method

.method public getNumNames()I
    .locals 1

    .line 1602
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    .line 1603
    const/4 v0, 0x0

    return v0

    .line 1605
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v0

    return v0
.end method

.method public getNumSheets()I
    .locals 4

    .line 844
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getNumSheets="

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfFontRecords()I
    .locals 1

    .line 558
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    return v0
.end method

.method public getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;
    .locals 4

    .line 2235
    const/16 v0, 0x1c1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    .line 2236
    .local v0, "record":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    if-nez v0, :cond_0

    .line 2237
    new-instance v1, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>()V

    move-object v0, v1

    .line 2239
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 2240
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2242
    .end local v1    # "pos":I
    :cond_0
    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 6
    .param p1, "str"    # I

    .line 1002
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    .line 1005
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    .line 1007
    .local v0, "retval":Lorg/apache/poi/hssf/record/common/UnicodeString;
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Returning SST for index="

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, " String= "

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1008
    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 744
    const/4 v0, -0x1

    .line 746
    .local v0, "retval":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 747
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 748
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "sheet":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    move v0, v2

    .line 752
    goto :goto_1

    .line 747
    .end local v3    # "sheet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v2    # "k":I
    :cond_1
    :goto_1
    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 664
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 2
    .param p1, "sheetnum"    # I

    .line 704
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    .line 705
    .local v0, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isVeryHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v1

    .line 708
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v1

    .line 711
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v1
.end method

.method public getSize()I
    .locals 6

    .line 1084
    const/4 v0, 0x0

    .line 1086
    .local v0, "retval":I
    const/4 v1, 0x0

    .line 1087
    .local v1, "lSST":Lorg/apache/poi/hssf/record/SSTRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 1088
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v4, :cond_0

    .line 1089
    move-object v1, v3

    check-cast v1, Lorg/apache/poi/hssf/record/SSTRecord;

    .line 1092
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SSTRecord;->calcExtSSTRecordSize()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1095
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v4

    add-int/2addr v0, v4

    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    goto :goto_0

    .line 1099
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "name"    # B
    .param p2, "sheetNumber"    # I

    .line 457
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 4
    .param p1, "xfIndex"    # I

    .line 931
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 932
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 933
    .local v1, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/StyleRecord;

    if-eqz v2, :cond_0

    .line 934
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/StyleRecord;

    .line 935
    .local v2, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/StyleRecord;->getXFIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 936
    return-object v2

    .line 931
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 1

    .line 1978
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    return-object v0
.end method

.method public getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2264
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    return-object v0
.end method

.method public getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 4

    .line 2028
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    if-nez v0, :cond_0

    .line 2029
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    .line 2030
    const/16 v0, 0xe2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 2031
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2033
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    return-object v0
.end method

.method public getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;
    .locals 4

    .line 2019
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2021
    const/16 v0, 0x809

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 2022
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2024
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    return-object v0
.end method

.method public insertSST()V
    .locals 5

    .line 1019
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "creating new SST via insertSST!"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1021
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 1022
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 1023
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 1024
    return-void
.end method

.method public isSheetHidden(I)Z
    .locals 1
    .param p1, "sheetnum"    # I

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1
    .param p1, "sheetnum"    # I

    .line 690
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isVeryHidden()Z

    move-result v0

    return v0
.end method

.method public isUsing1904DateWindowing()Z
    .locals 1

    .line 1818
    iget-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    return v0
.end method

.method public isWriteProtected()Z
    .locals 4

    .line 2051
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2052
    return v1

    .line 2054
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    .line 2055
    .local v0, "frec":Lorg/apache/poi/hssf/record/FileSharingRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 1500
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v0

    return v0
.end method

.method public preSerialize()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v0

    if-lez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    .line 1077
    .local v0, "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    iget-object v1, v0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1078
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    .line 1081
    .end local v0    # "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    :cond_0
    return-void
.end method

.method public removeBuiltinRecord(BI)V
    .locals 1
    .param p1, "name"    # B
    .param p2, "sheetIndex"    # I

    .line 466
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->removeBuiltinRecord(BI)V

    .line 468
    return-void
.end method

.method public removeExFormatRecord(I)V
    .locals 2
    .param p1, "index"    # I

    .line 897
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 898
    .local v0, "xfptr":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 899
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 900
    return-void
.end method

.method public removeExFormatRecord(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 885
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 886
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 887
    return-void
.end method

.method public removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/FontRecord;

    .line 547
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 548
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 549
    return-void
.end method

.method public removeName(I)V
    .locals 3
    .param p1, "nameIndex"    # I

    .line 1675
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1676
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1677
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 1678
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->removeName(I)V

    .line 1680
    .end local v0    # "idx":I
    :cond_0
    return-void
.end method

.method public removeSheet(I)V
    .locals 4
    .param p1, "sheetIndex"    # I

    .line 781
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 782
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 783
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 784
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()V

    .line 794
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 795
    .local v0, "sheetNum1Based":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 796
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    .line 798
    .local v2, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 800
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    goto :goto_1

    .line 801
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 804
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    .line 795
    .end local v2    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-eqz v1, :cond_4

    .line 811
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->removeSheet(I)V

    .line 813
    :cond_4
    return-void
.end method

.method public resolveNameXText(II)Ljava/lang/String;
    .locals 1
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I

    .line 2091
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 12
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 1034
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Serializing Workbook with offsets"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1036
    const/4 v0, 0x0

    .line 1038
    .local v0, "pos":I
    const/4 v2, 0x0

    .line 1039
    .local v2, "lSST":Lorg/apache/poi/hssf/record/SSTRecord;
    const/4 v3, 0x0

    .line 1040
    .local v3, "sstPos":I
    const/4 v5, 0x0

    .line 1041
    .local v5, "wroteBoundSheets":Z
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/Record;

    .line 1042
    .local v7, "record":Lorg/apache/poi/hssf/record/Record;
    const/4 v8, 0x0

    .line 1043
    .local v8, "len":I
    instance-of v9, v7, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v9, :cond_0

    .line 1044
    move-object v2, v7

    check-cast v2, Lorg/apache/poi/hssf/record/SSTRecord;

    .line 1045
    move v3, v0

    .line 1047
    :cond_0
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1

    if-eqz v2, :cond_1

    .line 1048
    add-int v9, v3, p1

    invoke-virtual {v2, v9}, Lorg/apache/poi/hssf/record/SSTRecord;->createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v7

    .line 1050
    :cond_1
    instance-of v9, v7, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    if-eqz v9, :cond_3

    .line 1051
    if-nez v5, :cond_4

    .line 1052
    iget-object v9, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 1053
    .local v10, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    add-int v11, v0, p1

    add-int/2addr v11, v8

    invoke-virtual {v10, v11, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->serialize(I[B)I

    move-result v11

    add-int/2addr v8, v11

    .end local v10    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    goto :goto_1

    .line 1055
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    .line 1058
    :cond_3
    add-int v9, v0, p1

    invoke-virtual {v7, v9, p2}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    move-result v8

    .line 1060
    :cond_4
    :goto_2
    add-int/2addr v0, v8

    .line 1061
    .end local v7    # "record":Lorg/apache/poi/hssf/record/Record;
    .end local v8    # "len":I
    goto :goto_0

    .line 1063
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v6, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Exiting serialize workbook"

    aput-object v8, v7, v4

    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1064
    return v0
.end method

.method public setSheetBof(II)V
    .locals 5
    .param p1, "sheetIndex"    # I
    .param p2, "pos"    # I

    .line 569
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setting bof for sheetnum ="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, " at pos="

    aput-object v4, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    .line 572
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setPositionOfBof(I)V

    .line 574
    return-void
.end method

.method public setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 4
    .param p1, "sheetnum"    # I
    .param p2, "visibility"    # Lorg/apache/poi/ss/usermodel/SheetVisibility;

    .line 732
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    .line 733
    .local v0, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setHidden(Z)V

    .line 734
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setVeryHidden(Z)V

    .line 735
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetnum"    # I
    .param p2, "hidden"    # Z

    .line 721
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 722
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 2
    .param p1, "sheetnum"    # I
    .param p2, "sheetname"    # Ljava/lang/String;

    .line 599
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    .line 602
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 604
    .local v0, "sn":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 605
    .local v1, "sheet":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 6
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 644
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 646
    .local v0, "sheetNumber":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 649
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    .line 650
    .local v1, "initialBspos":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v1, v2

    .line 651
    .local v2, "pos0":I
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 652
    .local v3, "removed":Lorg/apache/poi/hssf/record/Record;
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v5, v2, v0

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 653
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v5, v2, p2

    invoke-virtual {v4, v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 654
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 655
    return-void
.end method

.method public unwriteProtectWorkbook()V
    .locals 2

    .line 2079
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 2080
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 2081
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 2082
    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2083
    return-void
.end method

.method public updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 4
    .param p1, "commentRecord"    # Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 1689
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

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

    .line 1691
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    :cond_0
    goto :goto_0

    .line 1697
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    return-void
.end method

.method public updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 2218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2219
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 2220
    .local v1, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2221
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2222
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2218
    .end local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v2    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2225
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .line 2066
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    .line 2067
    .local v0, "frec":Lorg/apache/poi/hssf/record/FileSharingRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v1

    .line 2068
    .local v1, "waccess":Lorg/apache/poi/hssf/record/WriteAccessRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2069
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setReadOnly(S)V

    .line 2070
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setPassword(S)V

    .line 2071
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setUsername(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 2073
    return-void
.end method
