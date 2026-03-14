.class public Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.super Ljava/lang/Object;
.source "SXSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field public static final DEFAULT_WINDOW_SIZE:I = 0x64

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _compressTmpFiles:Z

.field private _randomAccessWindowSize:I

.field private final _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private final _sxFromXHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private final _wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final _xFromSxHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 123
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "rowAccessWindowSize"    # I

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 161
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p2, "rowAccessWindowSize"    # I

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p2, "rowAccessWindowSize"    # I
    .param p3, "compressTmpFiles"    # Z

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V

    .line 212
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V
    .locals 3
    .param p1, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .param p2, "rowAccessWindowSize"    # I
    .param p3, "compressTmpFiles"    # Z
    .param p4, "useSharedStringsTable"    # Z

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    .line 106
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    .line 238
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setRandomAccessWindowSize(I)V

    .line 239
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setCompressTempFiles(Z)V

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 241
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 242
    if-eqz p4, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_1

    .line 244
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 245
    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 246
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 247
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    goto :goto_0

    .line 250
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method private static copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "worksheetData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 410
    .local v0, "inReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v1, v2

    .line 411
    .local v1, "outWriter":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x1

    .line 413
    .local v2, "needsStartTag":Z
    const/4 v3, 0x0

    .line 414
    .local v3, "pos":I
    const-string v4, "<sheetData"

    .line 415
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 417
    .local v5, "n":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    move v7, v6

    .local v7, "c":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_9

    .line 419
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v7, v6, :cond_6

    .line 421
    add-int/lit8 v3, v3, 0x1

    .line 422
    if-ne v3, v5, :cond_0

    .line 424
    const-string v6, "<sheetData"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 426
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v7

    .line 427
    if-ne v7, v8, :cond_1

    .line 429
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 430
    goto :goto_1

    .line 432
    :cond_1
    const/16 v6, 0x3e

    if-ne v7, v6, :cond_2

    .line 435
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 437
    const-string v4, "</sheetData>"

    .line 438
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 439
    const/4 v3, 0x0

    .line 440
    const/4 v2, 0x0

    .line 441
    goto :goto_0

    .line 443
    :cond_2
    const/16 v9, 0x2f

    if-ne v7, v9, :cond_5

    .line 446
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v7

    .line 447
    if-ne v7, v8, :cond_3

    .line 449
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 450
    goto :goto_1

    .line 452
    :cond_3
    if-ne v7, v6, :cond_4

    .line 455
    goto :goto_1

    .line 458
    :cond_4
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v9}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 460
    invoke-virtual {v1, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 461
    const/4 v3, 0x0

    .line 462
    goto :goto_0

    .line 465
    :cond_5
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, v9}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 467
    invoke-virtual {v1, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 468
    const/4 v3, 0x0

    .line 469
    goto :goto_0

    .line 480
    :cond_6
    const/4 v6, 0x0

    if-lez v3, :cond_7

    .line 481
    invoke-virtual {v1, v4, v6, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 483
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v7, v6, :cond_8

    .line 485
    const/4 v3, 0x1

    goto :goto_0

    .line 489
    :cond_8
    invoke-virtual {v1, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 490
    const/4 v3, 0x0

    goto :goto_0

    .line 494
    :cond_9
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 495
    if-eqz v2, :cond_a

    .line 497
    const-string v6, "<sheetData>\n"

    invoke-virtual {v1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 501
    :cond_a
    invoke-static {p2, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 502
    const-string v6, "</sheetData>"

    invoke-virtual {v1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 505
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    move v7, v6

    if-eq v6, v8, :cond_b

    .line 506
    invoke-virtual {v1, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_2

    .line 508
    :cond_b
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 509
    return-void
.end method

.method private getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 4
    .param p1, "sheetRef"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 369
    .local v1, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    return-object v1

    .end local v1    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_0
    goto :goto_0

    .line 373
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setRandomAccessWindowSize(I)V
    .locals 2
    .param p1, "rowAccessWindowSize"    # I

    .line 285
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 288
    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    .line 289
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rowAccessWindowSize must be greater than 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "oleData"    # [B
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addPicture([BI)I
    .locals 1
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I

    .line 1207
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPicture([BI)I

    move-result v0

    return v0
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "toopack"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 1314
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 1315
    return-void
.end method

.method public cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 2
    .param p1, "sheetNum"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 898
    .local v1, "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_1

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An exception occurred while closing sheet data writer for sheet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 903
    .end local v1    # "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 909
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->close()V

    .line 910
    return-void
.end method

.method createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 3
    .param p1, "xSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 658
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 663
    .local v0, "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    nop

    .line 664
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 665
    return-object v0

    .line 660
    .end local v0    # "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    :catch_0
    move-exception v1

    .line 662
    .restart local v0    # "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 858
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 1187
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 1035
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method protected createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0
.end method

.method deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 2
    .param p1, "xSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    .line 355
    .local v0, "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 360
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void
.end method

.method public dispose()Z
    .locals 8

    .line 959
    const/4 v0, 0x1

    .line 960
    .local v0, "success":Z
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 963
    .local v2, "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v0, v3

    .line 967
    goto :goto_1

    .line 964
    :catch_0
    move-exception v5

    .line 965
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v6, v7, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 966
    const/4 v0, 0x0

    .line 967
    .end local v2    # "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 969
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 10
    .param p1, "bold"    # Z
    .param p2, "color"    # S
    .param p3, "fontHeight"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "italic"    # Z
    .param p6, "strikeout"    # Z
    .param p7, "typeOffset"    # S
    .param p8, "underline"    # B

    .line 823
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v1

    return-object v1
.end method

.method protected flushSheets()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 948
    .local v1, "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows()V

    .end local v1    # "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    goto :goto_0

    .line 950
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getActiveSheetIndex()I
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    return v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "idx"    # I

    .line 881
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 1228
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFirstVisibleTab()I

    move-result v0

    return v0
.end method

.method public getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "idx"    # S

    .line 847
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    .line 1339
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getForceFormulaRecalculation()Z

    move-result v0

    return v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    .line 1162
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 988
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "nameIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1024
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1055
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumCellStyles()I
    .locals 1

    .line 869
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumCellStyles()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    .line 835
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    .line 978
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfNames()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    return v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 1137
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPrintArea(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomAccessWindowSize()I
    .locals 1

    .line 281
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    return v0
.end method

.method getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 340
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object v0
.end method

.method protected getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1
    .param p1, "index"    # I

    .line 765
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 638
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheet"    # I

    .line 614
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1
    .param p1, "sheetIx"    # I

    .line 1263
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .line 1350
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 335
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method protected injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "zipEntrySource"    # Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 380
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    .line 381
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 383
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 384
    invoke-interface {p1, v2}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 385
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    .line 387
    .local v4, "xSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;

    if-nez v5, :cond_0

    .line 388
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v5

    .line 389
    .local v5, "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    invoke-virtual {v5}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorksheetXMLInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    .local v6, "xis":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v3, v0, v6}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 394
    nop

    .line 395
    .end local v5    # "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .end local v6    # "xis":Ljava/io/InputStream;
    goto :goto_1

    .line 393
    .restart local v5    # "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .restart local v6    # "xis":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p1    # "zipEntrySource":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .end local p2    # "out":Ljava/io/OutputStream;
    throw v7

    .line 396
    .end local v5    # "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .end local v6    # "xis":Ljava/io/InputStream;
    .restart local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "zipEntrySource":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .restart local p2    # "out":Ljava/io/OutputStream;
    :cond_0
    invoke-static {v3, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 398
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "xSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    goto :goto_0

    .line 401
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 402
    nop

    .line 404
    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    .line 405
    nop

    .line 406
    return-void

    .line 401
    .restart local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .end local p1    # "zipEntrySource":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .end local p2    # "out":Ljava/io/OutputStream;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 404
    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "zipEntrySource":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .restart local p2    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    throw v0
.end method

.method public isCompressTempFiles()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    return v0
.end method

.method protected isDate1904()Z
    .locals 1

    .line 1232
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#isHidden is not implemented"
    .end annotation

    .line 1239
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 1252
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetHidden(I)Z

    move-result v0

    return v0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 1258
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetVeryHidden(I)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1
    .param p1, "sxSheet"    # Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .param p2, "xSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 345
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public removeName(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1070
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(I)V

    .line 1071
    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1085
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Ljava/lang/String;)V

    .line 1086
    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/poi/ss/usermodel/Name;

    .line 1096
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 1097
    return-void
.end method

.method public removePrintArea(I)V
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 1148
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removePrintArea(I)V

    .line 1149
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 7
    .param p1, "index"    # I

    .line 789
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 790
    .local v0, "xSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    .line 793
    .local v1, "sxSheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeSheetAt(I)V

    .line 794
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 798
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    goto :goto_0

    .line 799
    :catch_0
    move-exception v2

    .line 800
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 802
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 541
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    .line 542
    return-void
.end method

.method public setCompressTempFiles(Z)V
    .locals 0
    .param p1, "compress"    # Z

    .line 317
    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    .line 318
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 563
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setFirstVisibleTab(I)V

    .line 564
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1331
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setForceFormulaRecalculation(Z)V

    .line 1332
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hiddenFlag"    # Z
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#setHidden is not implemented"
    .end annotation

    .line 1246
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setHidden(Z)V

    .line 1247
    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 1
    .param p1, "missingCellPolicy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 1176
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    .line 1177
    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 6
    .param p1, "sheetIndex"    # I
    .param p2, "startColumn"    # I
    .param p3, "endColumn"    # I
    .param p4, "startRow"    # I
    .param p5, "endRow"    # I

    .line 1124
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(IIIII)V

    .line 1125
    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "reference"    # Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    .line 1110
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 1
    .param p1, "index"    # I

    .line 590
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSelectedTab(I)V

    .line 591
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1277
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetHidden(II)V

    .line 1278
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # Z

    .line 1269
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetHidden(IZ)V

    .line 1270
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 1
    .param p1, "sheet"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 603
    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 575
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    .line 576
    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "visibility"    # Lorg/apache/poi/ss/usermodel/SheetVisibility;

    .line 1282
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 1283
    return-void
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    .line 716
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    .line 924
    const-string v0, "poi-sxssf-template"

    const-string v1, ".xlsx"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 927
    .local v0, "tmplFile":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 932
    nop

    .line 935
    new-instance v3, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Ljava/util/zip/ZipFile;)V

    .line 936
    .local v3, "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    invoke-virtual {p0, v3, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 938
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 939
    .local v1, "deleted":Z
    nop

    .line 940
    if-eqz v1, :cond_0

    .line 943
    return-void

    .line 941
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete temporary file after processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    .end local v1    # "deleted":Z
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .end local v0    # "tmplFile":Ljava/io/File;
    .end local p1    # "stream":Ljava/io/OutputStream;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 938
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "tmplFile":Ljava/io/File;
    .restart local p1    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    .restart local v1    # "deleted":Z
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    throw v2
.end method
