.class public final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.super Lorg/apache/poi/POIDocument;
.source "HSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;,
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG:I = 0x1

.field public static final INITIAL_CAPACITY:I

.field private static final MAX_STYLES:I = 0xfbe

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected _sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private _udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/hssf/usermodel/HSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

.field private missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private preserveNodes:Z

.field private workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 132
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 152
    const-string v0, "HSSFWorkbook.SheetInitialCapacity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    .line 199
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    .line 414
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 4
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 219
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 197
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 205
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 220
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 0
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p3, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    .line 320
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    .locals 13
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 197
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 205
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v3, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 339
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "workbookName":Ljava/lang/String;
    iput-boolean p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    .line 345
    if-nez p2, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->clearDirectory()V

    .line 349
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    sget v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    .line 356
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 358
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    invoke-static {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 359
    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 360
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumRecords()I

    move-result v5

    .line 363
    .local v5, "recOffset":I
    invoke-direct {p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->convertLabelRecords(Ljava/util/List;I)V

    .line 364
    new-instance v6, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v6, v3, v5}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    .line 365
    .local v6, "rs":Lorg/apache/poi/hssf/model/RecordStream;
    :goto_0
    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 367
    :try_start_0
    invoke-static {v6}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v7

    .line 368
    .local v7, "sheet":Lorg/apache/poi/hssf/model/InternalSheet;
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v9, p0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    nop

    .end local v7    # "sheet":Lorg/apache/poi/hssf/model/InternalSheet;
    goto :goto_0

    .line 369
    :catch_0
    move-exception v7

    .line 371
    .local v7, "eb":Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    sget-object v8, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v9, 0x5

    new-array v10, v1, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported BOF found of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 372
    .end local v7    # "eb":Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 376
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v4

    .line 377
    .local v4, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFName;

    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v8, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object v8

    invoke-direct {v7, p0, v4, v8}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 378
    .local v7, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v4    # "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v7    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 2
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    .line 250
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 267
    return-void
.end method

.method private convertLabelRecords(Ljava/util/List;I)V
    .locals 9
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I)V"
        }
    .end annotation

    .line 446
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 447
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "convertLabelRecords called"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 449
    :cond_0
    move v0, p2

    .local v0, "k":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 453
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0x204

    if-ne v4, v5, :cond_1

    .line 455
    move-object v4, v2

    check-cast v4, Lorg/apache/poi/hssf/record/LabelRecord;

    .line 457
    .local v4, "oldrec":Lorg/apache/poi/hssf/record/LabelRecord;
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 458
    new-instance v5, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 459
    .local v5, "newrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance v7, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v6

    .line 462
    .local v6, "stringid":I
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setRow(I)V

    .line 463
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setColumn(S)V

    .line 464
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setXFIndex(S)V

    .line 465
    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 466
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 449
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    .end local v4    # "oldrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .end local v5    # "newrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v6    # "stringid":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "k":I
    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "convertLabelRecords exit"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 472
    :cond_3
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 208
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v0
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 2177
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2178
    .local v1, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v2, v1, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    if-eqz v2, :cond_0

    .line 2179
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2180
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    if-eqz v2, :cond_1

    .line 2181
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    .end local v1    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 2163
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2164
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-nez v0, :cond_0

    .line 2165
    return-void

    .line 2167
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    .line 2168
    return-void
.end method

.method protected static getOleMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassID;",
            ">;"
        }
    .end annotation

    .line 2035
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2036
    .local v0, "olemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "PowerPoint Document"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2038
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2041
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method

.method private getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 2

    .line 1021
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 1022
    .local v0, "result":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1023
    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcName"    # Ljava/lang/String;

    .line 868
    const/4 v0, 0x2

    .line 869
    .local v0, "uniqueIndex":I
    move-object v1, p1

    .line 870
    .local v1, "baseName":Ljava/lang/String;
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 871
    .local v2, "bracketPos":I
    const/4 v3, 0x0

    const-string v4, ")"

    if-lez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 872
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 874
    .local v5, "suffix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    .line 875
    add-int/lit8 v0, v0, 0x1

    .line 876
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 879
    goto :goto_0

    .line 877
    :catch_0
    move-exception v6

    .line 883
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "uniqueIndex":I
    .local v5, "uniqueIndex":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "index":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_1

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    goto :goto_1

    .line 888
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 892
    .restart local v6    # "name":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v7, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 893
    return-object v6

    .line 895
    .end local v0    # "index":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public static getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;
    .locals 5
    .param p0, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 271
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 273
    .local v3, "wbName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-object v3

    .line 275
    :catch_0
    move-exception v4

    .line 271
    .end local v3    # "wbName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    :try_start_1
    const-string v0, "EncryptedPackage"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    .line 283
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "The supplied spreadsheet seems to be an Encrypted .xlsx file. It must be decrypted before use by XSSF, it cannot be used by HSSF"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    .restart local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catch_1
    move-exception v0

    .line 291
    :try_start_2
    const-string v0, "Book"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    .line 292
    new-instance v0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v1, "The supplied spreadsheet seems to be Excel 5.0/7.0 (BIFF5) format. POI only supports BIFF8 format (from Excel versions 97/2000/XP/2003)"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 294
    .restart local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catch_2
    move-exception v0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The supplied POIFSFileSystem does not contain a BIFF8 \'Workbook\' entry. Is it really an excel file? Had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private searchForPictures(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;)V"
        }
    .end annotation

    .line 2013
    .local p1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .local p2, "pictures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFPictureData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 2015
    .local v1, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v2, v1, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v2, :cond_0

    .line 2017
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v2

    .line 2018
    .local v2, "blip":Lorg/apache/poi/ddf/EscherBlipRecord;
    if-eqz v2, :cond_0

    .line 2021
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    .line 2022
    .local v3, "picture":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    .end local v2    # "blip":Lorg/apache/poi/ddf/EscherBlipRecord;
    .end local v3    # "picture":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 2032
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 422
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 425
    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 2
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .line 559
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    .line 560
    .local v0, "active":I
    if-ne v0, p1, :cond_0

    .line 562
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    .line 563
    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    .line 566
    :cond_2
    if-le p2, p1, :cond_3

    .line 568
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    .line 571
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    .line 573
    :cond_4
    :goto_0
    return-void
.end method

.method private updateEncryptionInfo()V
    .locals 15

    .line 2295
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->readProperties()V

    .line 2296
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 2298
    .local v0, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v8

    .line 2299
    .local v8, "password":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;

    move-result-object v9

    .line 2300
    .local v9, "wrl":Lorg/apache/poi/hssf/model/WorkbookRecordList;
    if-nez v8, :cond_0

    .line 2301
    if-eqz v0, :cond_4

    .line 2303
    invoke-virtual {v9, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    goto :goto_2

    .line 2307
    :cond_0
    if-nez v0, :cond_1

    .line 2308
    new-instance v1, Lorg/apache/poi/hssf/record/FilePassRecord;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    move-object v0, v1

    .line 2309
    const/4 v1, 0x1

    invoke-virtual {v9, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2313
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v10

    .line 2314
    .local v10, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v11

    .line 2315
    .local v11, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v12

    .line 2316
    .local v12, "encVer":[B
    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v13

    .line 2317
    .local v13, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v14

    .line 2319
    .local v14, "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    if-eqz v12, :cond_3

    :try_start_0
    invoke-virtual {v13, v8}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2322
    :cond_2
    invoke-virtual {v13}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object v5

    .line 2323
    .local v5, "verifier":[B
    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v6

    .line 2324
    .local v6, "salt":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v14

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    goto :goto_1

    .line 2320
    .end local v5    # "verifier":[B
    .end local v6    # "salt":[B
    :cond_3
    :goto_0
    invoke-virtual {v14, v8}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    :goto_1
    nop

    .line 2330
    .end local v10    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v11    # "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .end local v12    # "encVer":[B
    .end local v13    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v14    # "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    :cond_4
    :goto_2
    return-void

    .line 2326
    .restart local v10    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v11    # "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .restart local v12    # "encVer":[B
    .restart local v13    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v14    # "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    :catch_0
    move-exception v1

    .line 2327
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    const-string v3, "can\'t validate/update encryption setting"

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 4
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .line 536
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    .line 537
    .local v1, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v2

    .line 539
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 541
    if-ne v2, p1, :cond_0

    .line 542
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_1

    .line 545
    :cond_0
    if-gt p2, v2, :cond_1

    if-ge v2, p1, :cond_1

    .line 546
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_1

    .line 549
    :cond_1
    if-ge p1, v2, :cond_2

    if-gt v2, p2, :cond_2

    .line 550
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    .line 553
    .end local v1    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .end local v2    # "i":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 554
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 576
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 577
    .local v0, "lastSheetIx":I
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    return-void

    .line 578
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "range":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 580
    const-string v1, "(no sheets)"

    .line 582
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 5
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1428
    .local v0, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "Workbook"

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 1431
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    .line 1433
    iget-boolean v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-eqz v2, :cond_0

    .line 1437
    sget-object v2, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0005DocumentSummaryInformation"

    aput-object v4, v2, v3

    const-string v3, "\u0005SummaryInformation"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1448
    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    .line 1455
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 1457
    :cond_0
    return-void
.end method


# virtual methods
.method public addOlePackage(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "poiData"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2056
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 2057
    .local v0, "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getOleMap()Ljava/util/Map;

    move-result-object v1

    .line 2058
    .local v1, "olemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2059
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2060
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 2061
    goto :goto_1

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    :cond_0
    goto :goto_0

    .line 2065
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2066
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 2067
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oleData"    # [B
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2074
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->initDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2075
    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    .line 2079
    :cond_0
    const/4 v0, 0x0

    .line 2080
    .local v0, "storageId":I
    const/4 v2, 0x0

    .line 2082
    .local v2, "oleDir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2083
    .local v3, "storageStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2084
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    .line 2085
    sget-object v4, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v2, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 2087
    .end local v3    # "storageStr":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 2092
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 2093
    .local v1, "oleBytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "\u0001Ole"

    invoke-interface {v2, v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 2095
    new-instance v3, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v3, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2096
    .local v3, "oleNative":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2097
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    .line 2098
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "\u0001Ole10Native"

    invoke-interface {v2, v6, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 2100
    return v0

    .line 2087
    .end local v1    # "oleBytes":[B
    .end local v3    # "oleNative":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    goto :goto_0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public addPicture([BI)I
    .locals 9
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I

    .line 1908
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->initDrawings()V

    .line 1910
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    .line 1914
    .local v0, "uid":[B
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    move v3, v2

    .local v3, "escherTag":S
    const/4 v4, 0x0

    move-object v5, v4

    .local v4, "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    .local v5, "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    move v6, v2

    .line 1935
    .local v6, "blipSize":I
    new-instance v7, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v7}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    .line 1936
    .local v7, "blipRecordBitmap":Lorg/apache/poi/ddf/EscherBitmapBlip;
    move-object v5, v7

    .line 1937
    invoke-virtual {v7, v0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setUID([B)V

    .line 1938
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setMarker(B)V

    .line 1939
    invoke-virtual {v7, p1}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setPictureData([B)V

    .line 1940
    array-length v8, p1

    add-int/lit8 v8, v8, 0x19

    .line 1941
    .end local v6    # "blipSize":I
    .local v8, "blipSize":I
    const/16 v3, 0xff

    goto :goto_0

    .line 1918
    .end local v3    # "escherTag":S
    .end local v4    # "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    .end local v5    # "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    .end local v7    # "blipRecordBitmap":Lorg/apache/poi/ddf/EscherBitmapBlip;
    .end local v8    # "blipSize":I
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v3

    const v4, -0x65393229

    if-ne v3, v4, :cond_1

    .line 1919
    array-length v3, p1

    const/16 v4, 0x16

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1920
    .local v3, "picDataNoHeader":[B
    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1921
    move-object p1, v3

    .line 1925
    .end local v3    # "picDataNoHeader":[B
    :cond_1
    new-instance v3, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    .line 1926
    .local v3, "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    move-object v5, v3

    .line 1927
    .restart local v5    # "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUID([B)V

    .line 1928
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setPictureData([B)V

    .line 1930
    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setFilter(B)V

    .line 1931
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getCompressedSize()I

    move-result v4

    add-int/lit8 v8, v4, 0x3a

    .line 1932
    .restart local v8    # "blipSize":I
    const/4 v4, 0x0

    .line 1933
    .local v4, "escherTag":S
    move v3, v4

    .line 1945
    .end local v4    # "escherTag":S
    .local v3, "escherTag":S
    :goto_0
    add-int/lit16 v4, p2, -0xfe8

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setRecordId(S)V

    .line 1946
    packed-switch p2, :pswitch_data_0

    .line 1967
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected picture format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1964
    :pswitch_0
    const/16 v4, 0x7a80

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1965
    goto :goto_1

    .line 1958
    :pswitch_1
    const/16 v4, 0x6e00

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1959
    goto :goto_1

    .line 1961
    :pswitch_2
    const/16 v4, 0x46a0

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1962
    goto :goto_1

    .line 1955
    :pswitch_3
    const/16 v4, 0x5420

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1956
    goto :goto_1

    .line 1952
    :pswitch_4
    const/16 v4, 0x2160

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1953
    goto :goto_1

    .line 1949
    :pswitch_5
    const/16 v4, 0x3d40

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1950
    nop

    .line 1970
    :goto_1
    new-instance v4, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    .line 1971
    .local v4, "r":Lorg/apache/poi/ddf/EscherBSERecord;
    const/16 v6, -0xff9

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherBSERecord;->setRecordId(S)V

    .line 1972
    shl-int/lit8 v6, p2, 0x4

    or-int/2addr v1, v6

    int-to-short v1, v1

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setOptions(S)V

    .line 1973
    int-to-byte v1, p2

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    .line 1974
    int-to-byte v1, p2

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    .line 1975
    invoke-virtual {v4, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    .line 1976
    invoke-virtual {v4, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setTag(S)V

    .line 1977
    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    .line 1978
    invoke-virtual {v4, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 1979
    invoke-virtual {v4, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    .line 1980
    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    .line 1982
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "toopack"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2208
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 2209
    .local v0, "udfs":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 2210
    return-void
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .line 2258
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 9
    .param p1, "sheetIndex"    # I

    .line 842
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 843
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 844
    .local v0, "srcSheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "srcName":Ljava/lang/String;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    .line 846
    .local v2, "clonedSheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 847
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 849
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 851
    .local v4, "newSheetIndex":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 855
    const/16 v5, 0xd

    invoke-virtual {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v5

    .line 856
    .local v5, "filterDbNameIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 857
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v6

    .line 858
    .local v6, "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v7, p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 859
    .local v7, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v6    # "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v7    # "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :cond_0
    return-object v2
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    invoke-super {p0}, Lorg/apache/poi/POIDocument;->close()V

    .line 1339
    return-void
.end method

.method createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 3
    .param p1, "builtinCode"    # B
    .param p2, "sheetIndex"    # I

    .line 1166
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1168
    .local v0, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 1169
    .local v1, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    return-object v1
.end method

.method public createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    .line 1297
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    const/16 v1, 0xfbe

    if-eq v0, v1, :cond_0

    .line 1301
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 1302
    .local v0, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumCellStyles()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    .line 1303
    .local v1, "index":S
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2

    .line 1298
    .end local v0    # "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .end local v1    # "index":S
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The maximum number of cell styles was exceeded. You can define up to 4000 styles in a .xls workbook"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 2

    .line 1801
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    if-nez v0, :cond_0

    .line 1802
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    .line 1804
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3

    .line 1192
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    .line 1193
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    .line 1195
    .local v0, "fontindex":S
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1197
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 1199
    :cond_0
    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_1

    .line 1205
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v1

    return-object v1

    .line 1200
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Maximum number of fonts was exceeded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 3

    .line 1745
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createName()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1747
    .local v0, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 1749
    .local v1, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    return-object v1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6

    .line 824
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 826
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sheet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 828
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 829
    .local v1, "isOnlySheet":Z
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 830
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 831
    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 3
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 944
    if-eqz p1, :cond_2

    .line 948
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 954
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 955
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 957
    .local v1, "isOnlySheet":Z
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 958
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 959
    return-object v0

    .line 949
    .end local v0    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v1    # "isOnlySheet":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The workbook already contains a sheet named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public dumpDrawingGroupRecords(Z)V
    .locals 6
    .param p1, "fat"    # Z

    .line 1865
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 1866
    .local v0, "r":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->decode()V

    .line 1867
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    .line 1868
    .local v1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1869
    .local v2, "w":Ljava/io/PrintWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 1870
    .local v4, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p1, :cond_0

    .line 1871
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 1873
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .end local v4    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 1876
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1877
    return-void
.end method

.method protected encryptBytes([B)V
    .locals 16
    .param p1, "buf"    # [B

    .line 1553
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    .line 1554
    .local v2, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    if-nez v2, :cond_0

    .line 1555
    return-void

    .line 1557
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v3

    .line 1558
    .local v3, "enc":Lorg/apache/poi/poifs/crypt/Encryptor;
    const/4 v4, 0x0

    .line 1559
    .local v4, "initialOffset":I
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    move-object v6, v0

    .line 1560
    .local v6, "plain":Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    move-object v7, v0

    .line 1561
    .local v7, "leos":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    const/16 v0, 0x400

    invoke-virtual {v3, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    .line 1562
    new-array v8, v0, [B

    .line 1564
    .local v8, "tmp":[B
    :try_start_0
    invoke-virtual {v3, v7, v4}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object v0

    .line 1565
    .local v0, "os":Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    const/4 v9, 0x0

    .line 1566
    .local v9, "totalBytes":I
    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_4

    .line 1567
    const/4 v10, 0x4

    invoke-virtual {v6, v8, v5, v10}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->read([BII)I

    .line 1568
    invoke-static {v8, v5}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v11

    .line 1569
    .local v11, "sid":I
    const/4 v12, 0x2

    invoke-static {v8, v12}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v12

    .line 1570
    .local v12, "len":I
    invoke-static {v11}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v13

    .line 1571
    .local v13, "isPlain":Z
    invoke-virtual {v0, v12, v13}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->setNextRecordSize(IZ)V

    .line 1572
    invoke-virtual {v0, v8, v5, v10}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    .line 1573
    const/16 v14, 0x85

    if-ne v11, v14, :cond_1

    .line 1576
    new-array v14, v12, [B

    .line 1577
    .local v14, "bsrBuf":[B
    invoke-virtual {v6, v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 1578
    invoke-virtual {v0, v14, v5, v10}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    .line 1579
    add-int/lit8 v15, v12, -0x4

    invoke-virtual {v0, v14, v10, v15}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    .line 1580
    .end local v14    # "bsrBuf":[B
    goto :goto_3

    .line 1581
    :cond_1
    move v10, v12

    .line 1582
    .local v10, "todo":I
    :goto_1
    if-lez v10, :cond_3

    .line 1583
    array-length v14, v8

    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1584
    .local v14, "nextLen":I
    invoke-virtual {v6, v8, v5, v14}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    .line 1585
    if-eqz v13, :cond_2

    .line 1586
    invoke-virtual {v0, v8, v5, v14}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    goto :goto_2

    .line 1588
    :cond_2
    invoke-virtual {v0, v8, v5, v14}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    .line 1590
    :goto_2
    sub-int/2addr v10, v14

    .line 1591
    .end local v14    # "nextLen":I
    goto :goto_1

    .line 1593
    .end local v10    # "todo":I
    :cond_3
    :goto_3
    add-int/lit8 v10, v12, 0x4

    add-int/2addr v9, v10

    .line 1594
    .end local v11    # "sid":I
    .end local v12    # "len":I
    .end local v13    # "isPlain":Z
    goto :goto_0

    .line 1595
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v0    # "os":Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .end local v9    # "totalBytes":I
    nop

    .line 1599
    return-void

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method findExistingBuiltinNameRecordIdx(IB)I
    .locals 4
    .param p1, "sheetIndex"    # I
    .param p2, "builtinCode"    # B

    .line 1149
    const/4 v0, 0x0

    .local v0, "defNameIndex":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1150
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 1151
    .local v1, "r":Lorg/apache/poi/hssf/record/NameRecord;
    if-eqz v1, :cond_2

    .line 1154
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1155
    goto :goto_1

    .line 1157
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p1, :cond_1

    .line 1158
    return v0

    .line 1149
    .end local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to find all defined names to iterate over"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1161
    .end local v0    # "defNameIndex":I
    .end local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 4
    .param p1, "bold"    # Z
    .param p2, "color"    # S
    .param p3, "fontHeight"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "italic"    # Z
    .param p6, "strikeout"    # Z
    .param p7, "typeOffset"    # S
    .param p8, "underline"    # B

    .line 1216
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    .line 1217
    .local v0, "numberOfFonts":S
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_0
    if-gt v1, v0, :cond_2

    .line 1219
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1220
    goto :goto_1

    .line 1223
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v2

    .line 1224
    .local v2, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getBold()Z

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontHeight()S

    move-result v3

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getItalic()Z

    move-result v3

    if-ne v3, p5, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getStrikeout()Z

    move-result v3

    if-ne v3, p6, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getTypeOffset()S

    move-result v3

    if-ne v3, p7, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getUnderline()B

    move-result v3

    if-ne v3, p8, :cond_1

    .line 1233
    return-object v2

    .line 1217
    .end local v2    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 1237
    .end local v1    # "i":S
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "x0"    # Z
    .param p2, "x1"    # S
    .param p3, "x2"    # S
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # S
    .param p8, "x7"    # B

    .line 131
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSheetIndex()I
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    return v0
.end method

.method public getAllEmbeddedObjects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;"
        }
    .end annotation

    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2148
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 2150
    .local v2, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    .end local v2    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    goto :goto_0

    .line 2152
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    .line 1646
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;"
        }
    .end annotation

    .line 1994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    .local v0, "pictures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFPictureData;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

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

    .line 1996
    .local v2, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    if-eqz v3, :cond_0

    .line 1997
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    .line 1998
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v3

    .line 1999
    .local v3, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    .line 2000
    .end local v2    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    goto :goto_0

    .line 2002
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getBackupFlag()Z
    .locals 2

    .line 1143
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    .line 1145
    .local v0, "backupRecord":Lorg/apache/poi/hssf/record/BackupRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2
    .param p1, "builtinCode"    # B
    .param p2, "sheetIndex"    # I

    .line 1175
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v0

    .line 1176
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1177
    const/4 v1, 0x0

    return-object v1

    .line 1179
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1
.end method

.method public getBytes()[B
    .locals 12

    .line 1499
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1500
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "HSSFWorkbook.getBytes()"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1503
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    .line 1504
    .local v0, "sheets":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    array-length v1, v0

    .line 1506
    .local v1, "nSheets":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateEncryptionInfo()V

    .line 1510
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->preSerialize()V

    .line 1511
    move-object v2, v0

    .local v2, "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 1512
    .local v6, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hssf/model/InternalSheet;->preSerialize()V

    .line 1513
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->preSerialize()V

    .line 1511
    .end local v6    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1516
    .end local v2    # "arr$":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSize()I

    move-result v2

    .line 1519
    .local v2, "totalsize":I
    new-array v4, v1, [Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    .line 1520
    .local v4, "srCollectors":[Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 1521
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetBof(II)V

    .line 1522
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    invoke-direct {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;-><init>()V

    .line 1523
    .local v6, "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    aget-object v7, v0, v5

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    .line 1524
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v7

    add-int/2addr v2, v7

    .line 1525
    aput-object v6, v4, v5

    .line 1520
    .end local v6    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1528
    .end local v5    # "k":I
    :cond_2
    new-array v5, v2, [B

    .line 1529
    .local v5, "retval":[B
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v3, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->serialize(I[B)I

    move-result v3

    .line 1531
    .local v3, "pos":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    if-ge v6, v1, :cond_4

    .line 1532
    aget-object v7, v4, v6

    .line 1533
    .local v7, "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    invoke-virtual {v7, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->serialize(I[B)I

    move-result v8

    .line 1534
    .local v8, "serializedSize":I
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1543
    add-int/2addr v3, v8

    .line 1531
    .end local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .end local v8    # "serializedSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1538
    .restart local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .restart local v8    # "serializedSize":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Actual serialized sheet size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") differs from pre-calculated size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") for sheet ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1546
    .end local v6    # "k":I
    .end local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .end local v8    # "serializedSize":I
    :cond_4
    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->encryptBytes([B)V

    .line 1548
    return-object v5
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3
    .param p1, "idx"    # I

    .line 1324
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 1325
    .local v0, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    int-to-short v2, p1

    invoke-direct {v1, v2, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
    .locals 1

    .line 2187
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    .locals 2

    .line 1829
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 2

    .line 2288
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 2289
    .local v0, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFirstVisibleTab()I
    .locals 1

    .line 704
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    return v0
.end method

.method public getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 4
    .param p1, "idx"    # S

    .line 1258
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 1265
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 1266
    .local v0, "sIdx":Ljava/lang/Short;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1267
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    return-object v1

    .line 1270
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    .line 1271
    .local v1, "font":Lorg/apache/poi/hssf/record/FontRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(SLorg/apache/poi/hssf/record/FontRecord;)V

    .line 1272
    .local v2, "retval":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    return-object v2
.end method

.method public bridge synthetic getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "x0"    # S

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 3

    .line 2243
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 2244
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/16 v1, 0x1c1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    .line 2245
    .local v1, "recalc":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getEngineId()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1612
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 1613
    .local v0, "nameIndex":I
    if-gez v0, :cond_0

    .line 1614
    const/4 v1, 0x0

    return-object v1

    .line 1616
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 4
    .param p1, "nameIndex"    # I

    .line 1633
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    .local v0, "nNames":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1637
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1641
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1

    .line 1638
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified name index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1635
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There are no defined names in this workbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1757
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1758
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameName(I)Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "nameName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1761
    return v0

    .line 1757
    .end local v1    # "nameName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1764
    .end local v0    # "k":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I
    .locals 2
    .param p1, "name"    # Lorg/apache/poi/hssf/usermodel/HSSFName;

    .line 1778
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1779
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1780
    return v0

    .line 1778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1783
    .end local v0    # "k":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNameName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1658
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "nameIndex"    # I

    .line 1650
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    .line 1621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    .local v0, "nameList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFName;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    .line 1623
    .local v2, "nr":Lorg/apache/poi/hssf/usermodel/HSSFName;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1624
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "nr":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :cond_0
    goto :goto_0

    .line 1628
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getNumCellStyles()I
    .locals 1

    .line 1313
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    .line 1248
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    .line 1607
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 1017
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 1722
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1724
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v0, :cond_0

    .line 1725
    const/4 v1, 0x0

    return-object v1

    .line 1728
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRootDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 2267
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, "indexes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 649
    .local v1, "nSheets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 650
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    .line 651
    .local v3, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v3    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1049
    const/4 v0, 0x0

    .line 1051
    .local v0, "retval":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1053
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "sheetname":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 1051
    .end local v2    # "sheetname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    .end local v1    # "k":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1
    .param p1, "index"    # I

    .line 1036
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 1037
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 802
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 811
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 734
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 735
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1
    .param p1, "sheetIx"    # I

    .line 762
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .line 2283
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 2198
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-object v0
.end method

.method getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .line 1602
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object v0
.end method

.method initDrawings()V
    .locals 3

    .line 1880
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 1881
    .local v0, "mgr":Lorg/apache/poi/hssf/model/DrawingManager2;
    if-eqz v0, :cond_1

    .line 1882
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 1883
    .local v2, "sh":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sh":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_0
    goto :goto_1

    .line 1886
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 1888
    :goto_1
    return-void
.end method

.method public insertChartRecord()V
    .locals 4

    .line 1835
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1836
    .local v0, "loc":I
    const/16 v1, 0x5a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1856
    .local v1, "data":[B
    new-instance v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(I[B)V

    .line 1857
    .local v2, "r":Lorg/apache/poi/hssf/record/UnknownRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1858
    return-void

    :array_0
    .array-data 1
        0xft
        0x0t
        0x0t
        -0x10t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        -0x10t
        0x18t
        0x0t
        0x0t
        0x0t
        0x1t
        0x8t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x33t
        0x0t
        0xbt
        -0x10t
        0x12t
        0x0t
        0x0t
        0x0t
        -0x41t
        0x0t
        0x8t
        0x0t
        0x8t
        0x0t
        -0x7ft
        0x1t
        0x9t
        0x0t
        0x0t
        0x8t
        -0x40t
        0x1t
        0x40t
        0x0t
        0x0t
        0x8t
        0x40t
        0x0t
        0x1et
        -0xft
        0x10t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        0x8t
        0xct
        0x0t
        0x0t
        0x8t
        0x17t
        0x0t
        0x0t
        0x8t
        -0x9t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public isHidden()Z
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 750
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 751
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetHidden(I)Z

    move-result v0

    return v0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 757
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetVeryHidden(I)Z

    move-result v0

    return v0
.end method

.method public isWriteProtected()Z
    .locals 1

    .line 2121
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isWriteProtected()Z

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

    .line 979
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 2114
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v0

    return v0
.end method

.method public removeName(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1789
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1790
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeName(I)V

    .line 1791
    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1810
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 1811
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    .line 1812
    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/poi/ss/usermodel/Name;

    .line 1823
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I

    move-result v0

    .line 1824
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    .line 1825
    return-void
.end method

.method public removePrintArea(I)V
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 1737
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeBuiltinRecord(BI)V

    .line 1738
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 6
    .param p1, "index"    # I

    .line 1079
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 1080
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v0

    .line 1082
    .local v0, "wasSelected":Z
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1083
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeSheet(I)V

    .line 1086
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1087
    .local v1, "nSheets":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1089
    return-void

    .line 1092
    :cond_0
    move v2, p1

    .line 1093
    .local v2, "newSheetIndex":I
    if-lt v2, v1, :cond_1

    .line 1094
    add-int/lit8 v2, v1, -0x1

    .line 1097
    :cond_1
    if-eqz v0, :cond_4

    .line 1098
    const/4 v3, 0x0

    .line 1099
    .local v3, "someOtherSheetIsStillSelected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1100
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1101
    const/4 v3, 0x1

    .line 1102
    goto :goto_1

    .line 1099
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1105
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 1106
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTab(I)V

    .line 1111
    .end local v3    # "someOtherSheetIsStillSelected":Z
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v3

    .line 1112
    .local v3, "active":I
    if-ne v3, p1, :cond_5

    .line 1114
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_2

    .line 1115
    :cond_5
    if-le v3, p1, :cond_6

    .line 1117
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    .line 1119
    :cond_6
    :goto_2
    return-void
.end method

.method protected resetFontCache()V
    .locals 1

    .line 1284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 1285
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 4
    .param p1, "index"    # I

    .line 666
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 667
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 668
    .local v0, "nSheets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 669
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    .line 672
    return-void
.end method

.method public setBackupFlag(Z)V
    .locals 1
    .param p1, "backupValue"    # Z

    .line 1129
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    .line 1131
    .local v0, "backupRecord":Lorg/apache/poi/hssf/record/BackupRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    .line 1133
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 1
    .param p1, "index"    # I

    .line 696
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    .line 697
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 2231
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 2232
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object v1

    .line 2233
    .local v1, "recalc":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->setEngineId(I)V

    .line 2234
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hiddenFlag"    # Z

    .line 745
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHidden(Z)V

    .line 746
    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0
    .param p1, "missingCellPolicy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 497
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 498
    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 4
    .param p1, "sheetIndex"    # I
    .param p2, "startColumn"    # I
    .param p3, "endColumn"    # I
    .param p4, "startRow"    # I
    .param p5, "endRow"    # I

    .line 1705
    new-instance v0, Lorg/apache/poi/hssf/util/CellReference;

    const/4 v1, 0x1

    invoke-direct {v0, p4, p2, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    .line 1706
    .local v0, "cell":Lorg/apache/poi/hssf/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    .line 1708
    .local v2, "reference":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/hssf/util/CellReference;

    invoke-direct {v3, p5, p3, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    move-object v0, v3

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    .end local v2    # "reference":Ljava/lang/String;
    .local v1, "reference":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    .line 1712
    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 5
    .param p1, "sheetIndex"    # I
    .param p2, "reference"    # Ljava/lang/String;

    .line 1671
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1674
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v0, :cond_0

    .line 1675
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1678
    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 1679
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1680
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 1681
    if-lez v3, :cond_1

    .line 1682
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1684
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1685
    const-string v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1686
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1688
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {v3, p0, v4, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 1689
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 4
    .param p1, "index"    # I

    .line 594
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 595
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 596
    .local v0, "nSheets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 597
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 600
    return-void
.end method

.method public setSelectedTabs(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p1, "indexes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 627
    .local v1, "index":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .end local v1    # "index":I
    goto :goto_0

    .line 630
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 631
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 632
    .local v1, "nSheets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 633
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 634
    .local v3, "bSelect":Z
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 632
    .end local v3    # "bSelect":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 637
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    int-to-short v2, v2

    .line 638
    .local v2, "nSelected":S
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 639
    return-void
.end method

.method public setSelectedTabs([I)V
    .locals 6
    .param p1, "indexes"    # [I

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v1, p1

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 612
    .local v4, "index":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTabs(Ljava/util/Collection;)V

    .line 615
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 3
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 774
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 782
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 783
    goto :goto_0

    .line 785
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sheet state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sheet state must beone of the Workbook.SHEET_STATE_* constants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 780
    goto :goto_0

    .line 776
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 777
    nop

    .line 788
    :goto_0
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # Z

    .line 767
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 768
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 3
    .param p1, "sheetIx"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 718
    if-eqz p2, :cond_1

    .line 722
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 726
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 727
    return-void

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The workbook already contains a sheet named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 6
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 509
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "oldSheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    .line 513
    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    .line 514
    .local v1, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 515
    .local v3, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .end local v3    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    goto :goto_0

    .line 518
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 519
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    .line 521
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    .line 522
    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "visibility"    # Lorg/apache/poi/ss/usermodel/SheetVisibility;

    .line 792
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 793
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 794
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

    .line 970
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public unwriteProtectWorkbook()V
    .locals 1

    .line 2137
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->unwriteProtectWorkbook()V

    .line 2138
    return-void
.end method

.method public write()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1353
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateInPlaceWritePossible()V

    .line 1354
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 1357
    .local v0, "dir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 1359
    .local v1, "workbookNode":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    .line 1360
    .local v2, "workbookDoc":Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    .line 1363
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->writeProperties()V

    .line 1366
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem()V

    .line 1367
    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 2
    .param p1, "newFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1386
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    .line 1388
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 1389
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 1392
    nop

    .line 1393
    return-void

    .line 1391
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    throw v1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    .line 1414
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 1415
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 1418
    nop

    .line 1419
    return-void

    .line 1417
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v1
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .line 2130
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    return-void
.end method
