.class public Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
.super Lorg/apache/poi/POIXMLDocument;
.source "XSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CHARACTER_WIDTH:F = 7.0017f
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field private static final MAX_SENSITIVE_SHEET_NAME_LEN:I = 0x1f

.field public static final PICTURE_TYPE_BMP:I = 0xb

.field public static final PICTURE_TYPE_EPS:I = 0xa

.field public static final PICTURE_TYPE_GIF:I = 0x8

.field public static final PICTURE_TYPE_TIFF:I = 0x9

.field public static final PICTURE_TYPE_WPG:I = 0xc

.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

.field private _missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private _udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

.field private calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

.field private externalLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

.field private mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

.field private namedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private pivotCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;",
            ">;"
        }
    .end annotation
.end field

.field private pivotTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation
.end field

.field private sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

.field private workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 220
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 239
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 323
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 183
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 213
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 297
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->beforeDocumentRead()V

    .line 300
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->load(Lorg/apache/poi/POIXMLFactory;)V

    .line 303
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetBookViews()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    .line 305
    .local v0, "bvs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v1

    .line 306
    .local v1, "bv":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    .line 308
    .end local v0    # "bvs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    .end local v1    # "bv":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 183
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 213
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 267
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->beforeDocumentRead()V

    .line 270
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->load(Lorg/apache/poi/POIXMLFactory;)V

    .line 273
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetBookViews()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    .line 275
    .local v0, "bvs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v1

    .line 276
    .local v1, "bv":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    .line 278
    .end local v0    # "bvs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    .end local v1    # "bv":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 4
    .param p1, "workbookType"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    .line 247
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 183
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 213
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 248
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onWorkbookCreate()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 122
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    return-object v0
.end method

.method private static addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 6
    .param p0, "rp"    # Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .param p1, "target"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 672
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 673
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v1, v2, :cond_0

    .line 674
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    move-result-object v1

    .line 678
    .local v1, "xssfRel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 684
    .end local v1    # "xssfRel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    :goto_0
    return-void

    .line 680
    .restart local v1    # "xssfRel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    :cond_1
    new-instance v2, Lorg/apache/poi/POIXMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t clone sheet - unknown relation type found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .locals 1
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->addNewSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    .line 901
    .local v0, "sheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    .line 902
    return-object v0
.end method

.method private containsSheet(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "excludeSheetIdx"    # I

    .line 1808
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    .line 1810
    .local v0, "ctSheetArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_0

    .line 1811
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1814
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 1815
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1816
    .local v4, "ctName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 1817
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1820
    :cond_1
    if-eq p2, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1821
    const/4 v2, 0x1

    return v2

    .line 1814
    .end local v4    # "ctName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method private createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 4
    .param p1, "ctName"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 767
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 768
    .local v0, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 770
    return-object v0
.end method

.method private static getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 8
    .param p0, "sheetName"    # Ljava/lang/String;
    .param p1, "startC"    # I
    .param p2, "endC"    # I
    .param p3, "startR"    # I
    .param p4, "endR"    # I

    .line 1527
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 1528
    .local v0, "colRef":Lorg/apache/poi/ss/util/CellReference;
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 1530
    .local v1, "colRef2":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcName"    # Ljava/lang/String;

    .line 693
    const/4 v0, 0x2

    .line 694
    .local v0, "uniqueIndex":I
    move-object v1, p1

    .line 695
    .local v1, "baseName":Ljava/lang/String;
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 696
    .local v2, "bracketPos":I
    const/4 v3, 0x0

    const-string v4, ")"

    if-lez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "suffix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    .line 700
    add-int/lit8 v0, v0, 0x1

    .line 701
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 704
    goto :goto_0

    .line 702
    :catch_0
    move-exception v6

    .line 708
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "uniqueIndex":I
    .local v5, "uniqueIndex":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "index":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_1

    .line 711
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

    .line 713
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

    .line 717
    .restart local v6    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 718
    return-object v6

    .line 720
    .end local v0    # "index":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method protected static newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 4
    .param p0, "workbookType"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    .line 480
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 482
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 484
    .local v1, "corePartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 486
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 488
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v2

    const-string v3, "Apache POI"

    invoke-interface {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    return-object v0

    .line 491
    .end local v0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v1    # "corePartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onSheetDelete(I)V
    .locals 10
    .param p1, "index"    # I

    .line 1370
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 1372
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onSheetDelete()V

    .line 1375
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    .line 1378
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 1380
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    .line 1384
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFName;>;"
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1386
    .local v3, "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v4

    .line 1387
    .local v4, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1388
    goto :goto_0

    .line 1390
    :cond_1
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 1391
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1392
    :cond_2
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 1394
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    .line 1396
    .end local v3    # "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    .end local v4    # "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    :cond_3
    :goto_1
    goto :goto_0

    .line 1397
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1398
    .restart local v3    # "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .end local v3    # "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    goto :goto_2

    .line 1400
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private onWorkbookCreate()V
    .locals 6

    .line 451
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    .line 454
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object v0

    .line 455
    .local v0, "workbookPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->setDate1904(Z)V

    .line 457
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v1

    .line 458
    .local v1, "bvs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v2

    .line 459
    .local v2, "bv":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    .line 460
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    .line 462
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v3

    .line 463
    .local v3, "expProps":Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v4

    const-string v5, "Apache POI"

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    .line 465
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 466
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 467
    invoke-virtual {v4, p0}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 469
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    .line 470
    new-instance v4, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v4}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    .line 473
    return-void
.end method

.method private reprocessNamedRanges()V
    .locals 4

    .line 1725
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    .line 1726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    .line 1727
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1729
    .local v3, "ctName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1728
    .end local v3    # "ctName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1732
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
    .locals 1

    .line 2161
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    return-object v0

    .line 2164
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    return-object v0
.end method

.method private saveCalculationChain()V
    .locals 2

    .line 1735
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CalculationChain;->getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->sizeOfCArray()I

    move-result v0

    .line 1737
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 1738
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 1739
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    .line 1742
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method private saveNamedRanges()V
    .locals 6

    .line 1701
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1702
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    .line 1703
    .local v0, "names":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 1704
    .local v1, "nr":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    const/4 v2, 0x0

    .line 1705
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1706
    .local v4, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v5

    aput-object v5, v1, v2

    .line 1707
    nop

    .end local v4    # "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1709
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->setDefinedNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V

    .line 1710
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1711
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    .line 1713
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->setDefinedNames(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;)V

    .line 1716
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V

    .line 1717
    .end local v0    # "names":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;
    .end local v1    # "nr":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .end local v2    # "i":I
    goto :goto_1

    .line 1718
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1719
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    .line 1722
    :cond_3
    :goto_1
    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 2
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .line 1680
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    .line 1681
    .local v0, "active":I
    if-ne v0, p1, :cond_0

    .line 1683
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    .line 1684
    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    .line 1687
    :cond_2
    if-le p2, p1, :cond_3

    .line 1689
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    .line 1692
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    .line 1694
    :cond_4
    :goto_0
    return-void
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 4
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .line 1658
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1659
    .local v1, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    .line 1661
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1663
    if-ne v2, p1, :cond_0

    .line 1664
    invoke-virtual {v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_1

    .line 1667
    :cond_0
    if-gt p2, v2, :cond_1

    if-ge v2, p1, :cond_1

    .line 1668
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_1

    .line 1671
    :cond_1
    if-ge p1, v2, :cond_2

    if-gt v2, p2, :cond_2

    .line 1672
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    .line 1675
    .end local v1    # "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    .end local v2    # "i":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1676
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 1447
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1448
    .local v0, "lastSheetIx":I
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    return-void

    .line 1449
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

    .line 1450
    .local v1, "range":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1451
    const-string v1, "(no sheets)"

    .line 1453
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

.method private validateSheetName(Ljava/lang/String;)V
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    return-void

    .line 890
    :cond_0
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
.end method

.method private workbookProtectionPresent()Z
    .locals 1

    .line 2157
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetWorkbookProtection()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "oleData"    # [B
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 2371
    .local v0, "opc":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    const/4 v1, 0x0

    .local v1, "oleId":I
    const/4 v2, 0x0

    .line 2374
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/xl/embeddings/oleObject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    .local v2, "pnOLE":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    nop

    .line 2378
    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2380
    const-string v3, "application/vnd.openxmlformats-officedocument.oleObject"

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 2382
    .local v3, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v4, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v4, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2384
    .local v4, "ole10":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v6, p1

    add-int/lit16 v6, v6, 0x1f4

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2385
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    .line 2387
    new-instance v6, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 2388
    .local v6, "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v7

    .line 2389
    .local v7, "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "\u0001Ole10Native"

    invoke-virtual {v7, v9, v8}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 2390
    sget-object v8, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v7, v8}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 2394
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 2395
    .local v8, "os":Ljava/io/OutputStream;
    invoke-virtual {v6, v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 2396
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2397
    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 2399
    return v1

    .line 2375
    .end local v2    # "pnOLE":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v3    # "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "ole10":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v7    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v8    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 2376
    .restart local v2    # "pnOLE":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .local v3, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ole object name not recognized"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public addPicture(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 553
    .local v0, "imageNumber":I
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v2, v2, p2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 554
    .local v1, "img":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 555
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static {p1, v2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 556
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 557
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v3, v0, -0x1

    return v3
.end method

.method public addPicture([BI)I
    .locals 4
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I

    .line 523
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 524
    .local v0, "imageNumber":I
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v2, v2, p2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 526
    .local v1, "img":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 527
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 528
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v2    # "out":Ljava/io/OutputStream;
    nop

    .line 532
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    .locals 6
    .param p1, "rId"    # Ljava/lang/String;

    .line 2242
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    .line 2244
    .local v0, "ctWorkbook":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetPivotCaches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2245
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v1

    .local v1, "caches":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;
    goto :goto_0

    .line 2247
    .end local v1    # "caches":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v1

    .line 2249
    .restart local v1    # "caches":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->addNewPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v2

    .line 2251
    .local v2, "cache":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2252
    .local v3, "tableId":I
    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setCacheId(J)V

    .line 2253
    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setId(Ljava/lang/String;)V

    .line 2254
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    if-nez v4, :cond_1

    .line 2255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    .line 2257
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2258
    return-object v2
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "toopack"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2190
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 2191
    return-void
.end method

.method protected beforeDocumentRead()V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    .line 352
    return-void

    .line 346
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/XLSBUnsupportedException;

    invoke-direct {v0}, Lorg/apache/poi/xssf/XLSBUnsupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1
    .param p1, "sheetNum"    # I

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 11
    .param p1, "sheetNum"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 588
    const-string v0, "Failed to clone sheet"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 589
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 591
    .local v1, "srcSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    if-nez p2, :cond_0

    .line 592
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "srcName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 594
    .end local v2    # "srcName":Ljava/lang/String;
    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    .line 598
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    .line 601
    .local v2, "clonedSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationParts()Ljava/util/List;

    move-result-object v3

    .line 603
    .local v3, "rels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart$RelationPart;>;"
    const/4 v4, 0x0

    .line 604
    .local v4, "dg":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 605
    .local v6, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    .line 607
    .local v7, "r":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v8, v7, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v8, :cond_1

    .line 608
    move-object v4, v7

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 609
    goto :goto_1

    .line 612
    :cond_1
    invoke-static {v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 613
    .end local v6    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v7    # "r":Lorg/apache/poi/POIXMLDocumentPart;
    goto :goto_1

    .line 616
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 617
    .local v6, "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v7, v8, :cond_3

    .line 618
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_3
    goto :goto_2

    .line 624
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    nop

    .line 628
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 629
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V

    .line 630
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    nop

    .line 634
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    .line 635
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetLegacyDrawing()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    .line 636
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "Cloning sheets with comments is not yet supported."

    aput-object v10, v9, v8

    invoke-virtual {v5, v7, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 637
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetLegacyDrawing()V

    .line 639
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 640
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    const-string v9, "Cloning sheets with page setup is not yet supported."

    aput-object v9, v6, v8

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 641
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetPageSetup()V

    .line 644
    :cond_6
    invoke-virtual {v2, v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    .line 647
    if-eqz v4, :cond_8

    .line 648
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDrawing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 651
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetDrawing()V

    .line 653
    :cond_7
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v5

    .line 655
    .local v5, "clonedDg":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 657
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v5

    .line 660
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getRelationParts()Ljava/util/List;

    move-result-object v6

    .line 661
    .local v6, "srcRels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart$RelationPart;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 662
    .local v8, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-static {v8, v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V

    .end local v8    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    goto :goto_3

    .line 665
    .end local v5    # "clonedDg":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .end local v6    # "srcRels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart$RelationPart;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    return-object v2

    .line 631
    .end local v0    # "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    :catch_0
    move-exception v5

    .line 632
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/poi/POIXMLException;

    invoke-direct {v6, v0, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 622
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 623
    .local v5, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v6, Lorg/apache/poi/POIXMLException;

    invoke-direct {v6, v0, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1746
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveNamedRanges()V

    .line 1747
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveCalculationChain()V

    .line 1749
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 1750
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "workbook"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 1752
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 1753
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1754
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 1755
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1756
    return-void
.end method

.method createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 5
    .param p1, "builtInName"    # Ljava/lang/String;
    .param p2, "sheetNumber"    # I

    .line 1550
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1552
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    .line 1553
    .local v0, "names":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->addNewDefinedName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v1

    .line 1554
    .local v1, "nameRecord":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    .line 1555
    int-to-long v2, p2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    .line 1557
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1562
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v2

    return-object v2

    .line 1558
    :cond_1
    new-instance v2, Lorg/apache/poi/POIXMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Builtin ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") already exists for sheet ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1

    .line 730
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
    .locals 2

    .line 741
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;-><init>(Lorg/apache/poi/xssf/model/StylesTable;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    .line 744
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    return-object v0
.end method

.method protected createDialogsheet(Ljava/lang/String;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;)Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
    .locals 2
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "dialogsheet"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    .line 895
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 896
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v1
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 2

    .line 754
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>()V

    .line 755
    .local v0, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J

    .line 756
    return-object v0
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2

    .line 761
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    .line 762
    .local v0, "ctName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 4

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sheet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "sheetname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 783
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    return-object v1
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 9
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 839
    if-eqz p1, :cond_5

    .line 843
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    .line 847
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 849
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    .line 853
    .local v0, "sheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    const/4 v2, 0x1

    .line 856
    .local v2, "sheetNumber":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 857
    .local v4, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iget-object v5, v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    int-to-long v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    .end local v4    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    goto :goto_1

    .line 862
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "sheetName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/POIXMLDocumentPart;

    .line 864
    .local v5, "relation":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 867
    add-int/lit8 v2, v2, 0x1

    .line 868
    goto :goto_0

    .end local v5    # "relation":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_2
    goto :goto_2

    .line 873
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    nop

    .line 876
    .end local v3    # "sheetName":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    .line 877
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 878
    .local v3, "wrapper":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iput-object v0, v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 879
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setId(Ljava/lang/String;)V

    .line 880
    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setSheetId(J)V

    .line 881
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 882
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    .line 884
    :cond_4
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    return-object v3

    .line 840
    .end local v0    # "sheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .end local v1    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v2    # "sheetNumber":I
    .end local v3    # "wrapper":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 122
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 10
    .param p1, "bold"    # Z
    .param p2, "color"    # S
    .param p3, "fontHeight"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "italic"    # Z
    .param p6, "strikeout"    # Z
    .param p7, "typeOffset"    # S
    .param p8, "underline"    # B

    .line 910
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/xssf/model/StylesTable;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v1

    return-object v1
.end method

.method public getActiveSheetIndex()I
    .locals 2

    .line 922
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getActiveTab()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 1846
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1848
    .local v0, "embedds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 1850
    .local v2, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 1851
    .local v4, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1854
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 1855
    .restart local v4    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_1
    goto :goto_0

    .line 1858
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    if-nez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/xl/media/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 935
    .local v0, "mediaParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    .line 936
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 937
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {v4, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 940
    .end local v0    # "mediaParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    return-object v0
.end method

.method getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 3
    .param p1, "builtInCode"    # Ljava/lang/String;
    .param p2, "sheetNumber"    # I

    .line 1534
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 1535
    .local v1, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1536
    return-object v1

    .end local v1    # "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    :cond_0
    goto :goto_0

    .line 1539
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    return-object v0
.end method

.method public getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1963
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    return-object v0
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # I

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1
    .param p1, "idx"    # I

    .line 951
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;
    .locals 1

    .line 1792
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    if-nez v0, :cond_0

    .line 1793
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    .line 1795
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    return-object v0
.end method

.method public getCustomXMLMappings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    .line 1989
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/MapInfo;->getAllXSSFMaps()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExternalLinksTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1981
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 4

    .line 1465
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    .line 1466
    .local v0, "bookViews":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v1

    .line 1467
    .local v1, "bookView":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getFirstSheet()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    return v2
.end method

.method public bridge synthetic getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "x0"    # S

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1
    .param p1, "idx"    # S

    .line 962
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 7

    .line 2230
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    .line 2231
    .local v0, "ctWorkbook":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v1

    .line 2232
    .local v1, "calcPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getMapInfo()Lorg/apache/poi/xssf/model/MapInfo;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1998
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    return-object v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    .line 1410
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object v0
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 976
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 977
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/xssf/usermodel/XSSFName;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v1, 0x0

    return-object v1

    .line 980
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object v1
.end method

.method public bridge synthetic getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # I

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1008
    .local v0, "nNames":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1011
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1015
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object v1

    .line 1012
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

    .line 1009
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There are no defined names in this workbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    .line 1041
    .local v0, "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-eqz v0, :cond_0

    .line 1042
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 1044
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumCellStyles()I
    .locals 1

    .line 1054
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    .line 1064
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getFonts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    .line 1074
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    .line 2263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-object v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 2
    .param p1, "sheetIndex"    # I

    .line 1094
    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    .line 1095
    .local v0, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-nez v0, :cond_0

    .line 1096
    const/4 v1, 0x0

    return-object v1

    .line 1099
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1765
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 1112
    .local v1, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    return-object v1

    .end local v1    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_0
    goto :goto_0

    .line 1116
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1
    .param p1, "index"    # I

    .line 1129
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1130
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1141
    const/4 v0, 0x0

    .line 1142
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 1143
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    return v0

    .line 1146
    :cond_0
    nop

    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 3
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 1161
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    if-ne v2, p1, :cond_0

    .line 1162
    return v0

    .line 1164
    :cond_0
    nop

    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIx"    # I

    .line 1177
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1178
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 4
    .param p1, "sheetIx"    # I

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1890
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 1891
    .local v0, "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object v1

    .line 1892
    .local v1, "state":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne v1, v2, :cond_0

    .line 1893
    sget-object v2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v2

    .line 1895
    :cond_0
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne v1, v2, :cond_1

    .line 1896
    sget-object v2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v2

    .line 1898
    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne v1, v2, :cond_2

    .line 1899
    sget-object v2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v2

    .line 1901
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This should never happen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .line 2342
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 1

    .line 1773
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2353
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 2355
    .local v1, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 2356
    .local v3, "tbl":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2357
    return-object v3

    .end local v3    # "tbl":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    :cond_0
    goto :goto_1

    .end local v1    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 2362
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    .line 1780
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v0, :cond_0

    .line 1781
    const/4 v0, 0x0

    return-object v0

    .line 1783
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    return-object v0
.end method

.method getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 2180
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    return-object v0
.end method

.method public getWorkbookType()Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1

    .line 2272
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    :goto_0
    return-object v0
.end method

.method public isDate1904()Z
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1837
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object v0

    .line 1838
    .local v0, "workbookPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->getDate1904()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHidden()Z
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1864
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMacroEnabled()Z
    .locals 2

    .line 1240
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRevisionLocked()Z
    .locals 1

    .line 2050
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockRevision()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 3
    .param p1, "sheetIx"    # I

    .line 1875
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1876
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 1877
    .local v0, "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSheetVeryHidden(I)Z
    .locals 3
    .param p1, "sheetIx"    # I

    .line 1882
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1883
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 1884
    .local v0, "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 2029
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockStructure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWindowsLocked()Z
    .locals 1

    .line 2041
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 1206
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2017
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not Implemented - see bug #57184"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lockRevision()V
    .locals 2

    .line 2085
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    .line 2086
    return-void
.end method

.method public lockStructure()V
    .locals 2

    .line 2057
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    .line 2058
    return-void
.end method

.method public lockWindows()V
    .locals 2

    .line 2071
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    .line 2072
    return-void
.end method

.method protected onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 1947
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1949
    .local v1, "sheetId":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    .line 1951
    .end local v1    # "sheetId":I
    :cond_0
    return-void
.end method

.method protected onDocumentRead()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 357
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;

    move-result-object v0

    .line 358
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;->getWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "theme":Lorg/apache/poi/xssf/model/ThemesTable;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v3, "shIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFSheet;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v4, "elIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/model/ExternalLinksTable;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getRelationParts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 364
    .local v6, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    .line 365
    .local v7, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v8, v7, Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-eqz v8, :cond_0

    .line 366
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v8, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_1

    .line 367
    :cond_0
    instance-of v8, v7, Lorg/apache/poi/xssf/model/StylesTable;

    if-eqz v8, :cond_1

    .line 368
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v8, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_1

    .line 369
    :cond_1
    instance-of v8, v7, Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v8, :cond_2

    .line 370
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/model/ThemesTable;

    move-object v2, v8

    goto :goto_1

    .line 371
    :cond_2
    instance-of v8, v7, Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v8, :cond_3

    .line 372
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/model/CalculationChain;

    iput-object v8, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    goto :goto_1

    .line 373
    :cond_3
    instance-of v8, v7, Lorg/apache/poi/xssf/model/MapInfo;

    if-eqz v8, :cond_4

    .line 374
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/model/MapInfo;

    iput-object v8, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    goto :goto_1

    .line 375
    :cond_4
    instance-of v8, v7, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-eqz v8, :cond_5

    .line 376
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 377
    :cond_5
    instance-of v8, v7, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-eqz v8, :cond_6

    .line 378
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v6    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v7    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_6
    :goto_1
    goto :goto_0

    .line 381
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    .line 383
    .local v5, "packageReadOnly":Z
    :goto_2
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v6, :cond_a

    .line 385
    if-eqz v5, :cond_9

    .line 386
    new-instance v6, Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v6}, Lorg/apache/poi/xssf/model/StylesTable;-><init>()V

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_3

    .line 388
    :cond_9
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 391
    :cond_a
    :goto_3
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6, v1}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 392
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6, v2}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 394
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-nez v6, :cond_c

    .line 396
    if-eqz v5, :cond_b

    .line 397
    new-instance v6, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v6}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>()V

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_4

    .line 399
    :cond_b
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 405
    :cond_c
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 407
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v6

    .local v6, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_5
    if-ge v10, v9, :cond_d

    aget-object v11, v6, v10

    .line 408
    .local v11, "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-virtual {v1, v3, v11}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V

    .line 407
    .end local v11    # "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 413
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    .line 414
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetExternalReferences()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 415
    iget-object v6, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getExternalReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;->getExternalReferenceArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;

    move-result-object v6

    .local v6, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;
    array-length v9, v6

    .restart local v9    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_6
    if-ge v10, v9, :cond_f

    aget-object v11, v6, v10

    .line 416
    .local v11, "er":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;
    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 417
    .local v12, "el":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    if-nez v12, :cond_e

    .line 418
    sget-object v13, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-array v15, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExternalLinksTable with r:id "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v7

    const/4 v8, 0x5

    invoke-virtual {v13, v8, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 419
    goto :goto_7

    .line 421
    :cond_e
    iget-object v8, v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v11    # "er":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;
    .end local v12    # "el":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_6

    .line 426
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;
    .end local v2    # "theme":Lorg/apache/poi/xssf/model/ThemesTable;
    .end local v3    # "shIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFSheet;>;"
    .end local v4    # "elIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/model/ExternalLinksTable;>;"
    .end local v5    # "packageReadOnly":Z
    nop

    .line 430
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V
    .locals 7
    .param p2, "ctSheet"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;",
            ")V"
        }
    .end annotation

    .line 437
    .local p1, "shIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFSheet;>;"
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 438
    .local v0, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    if-nez v0, :cond_0

    .line 439
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sheet with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and r:id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 440
    return-void

    .line 442
    :cond_0
    iput-object p2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 443
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentRead()V

    .line 444
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public removeName(I)V
    .locals 1
    .param p1, "nameIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1253
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 1254
    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1272
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1273
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFName;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1276
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Name;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 1277
    return-void

    .line 1274
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named range was not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/apache/poi/ss/usermodel/Name;

    .line 1290
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/ListValuedMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    return-void

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name was not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrintArea(I)V
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 1311
    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    .line 1312
    .local v0, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    .line 1315
    :cond_0
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 4
    .param p1, "index"    # I

    .line 1333
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1335
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onSheetDelete(I)V

    .line 1337
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 1338
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 1339
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1342
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1343
    return-void

    .line 1347
    :cond_0
    move v1, p1

    .line 1348
    .local v1, "newSheetIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1349
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v2

    .line 1354
    .local v2, "active":I
    if-ne v2, p1, :cond_2

    .line 1356
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    .line 1357
    :cond_2
    if-le v2, p1, :cond_3

    .line 1359
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    .line 1361
    :cond_3
    :goto_0
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 6
    .param p1, "index"    # I

    .line 1432
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1434
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1435
    .local v3, "arrayBook":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    .line 1434
    .end local v3    # "arrayBook":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1437
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 4
    .param p1, "index"    # I

    .line 1477
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    .line 1478
    .local v0, "bookViews":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v1

    .line 1479
    .local v1, "bookView":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setFirstSheet(J)V

    .line 1480
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 2212
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    .line 2213
    .local v0, "ctWorkbook":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetCalcPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v1

    .line 2216
    .local v1, "calcPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;
    :goto_0
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcId(J)V

    .line 2218
    if-eqz p1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne v2, v3, :cond_1

    .line 2219
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    .line 2221
    :cond_1
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hiddenFlag"    # Z
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1870
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0
    .param p1, "missingCellPolicy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 1421
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 1422
    return-void
.end method

.method protected setPivotTables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;)V"
        }
    .end annotation

    .line 2268
    .local p1, "pivotTables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;>;"
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    .line 2269
    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "startColumn"    # I
    .param p3, "endColumn"    # I
    .param p4, "startRow"    # I
    .param p5, "endRow"    # I

    .line 1521
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "reference":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    .line 1523
    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 5
    .param p1, "sheetIndex"    # I
    .param p2, "reference"    # Ljava/lang/String;

    .line 1491
    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    .line 1492
    .local v1, "name":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-nez v1, :cond_0

    .line 1493
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    .line 1497
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1499
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1500
    if-lez v3, :cond_1

    .line 1501
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1503
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1504
    const-string v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1505
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1499
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1507
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 1508
    return-void
.end method

.method public setRevisionsPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 2129
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    return-void

    .line 2132
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "revisions"

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    .line 2133
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 4
    .param p1, "index"    # I

    .line 1570
    const/4 v0, 0x0

    .line 1571
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 1572
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    if-ne v0, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    .line 1573
    nop

    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1575
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1913
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetState(I)V

    .line 1914
    invoke-static {}, Lorg/apache/poi/ss/usermodel/SheetVisibility;->values()[Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 1915
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # Z

    .line 1906
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    .line 1907
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "sheetname"    # Ljava/lang/String;

    .line 1589
    if-eqz p2, :cond_3

    .line 1593
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1594
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "oldSheetName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    .line 1598
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1600
    :cond_0
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1604
    return-void

    .line 1608
    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1613
    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;

    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 1614
    .local v1, "utils":Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;
    invoke-virtual {v1, p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateSheetName(ILjava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    .line 1617
    return-void

    .line 1609
    .end local v1    # "utils":Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The workbook already contains a sheet of this name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1590
    .end local v0    # "oldSheetName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 8
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 1627
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1628
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1631
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v1

    .line 1632
    .local v1, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 1633
    .local v2, "cts":Lorg/apache/xmlbeans/XmlObject;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    .line 1634
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->insertNewSheet(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v3

    .line 1635
    .local v3, "newcts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 1639
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v4

    .line 1640
    .local v4, "sheetArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 1641
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    aget-object v7, v4, v5

    iput-object v7, v6, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 1640
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1644
    .end local v5    # "i":I
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    .line 1645
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    .line 1646
    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 3
    .param p1, "sheetIx"    # I
    .param p2, "visibility"    # Lorg/apache/poi/ss/usermodel/SheetVisibility;

    .line 1919
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    .line 1921
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 1922
    .local v0, "ctSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/SheetVisibility;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1930
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    .line 1931
    goto :goto_0

    .line 1933
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This should never happen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1927
    :cond_1
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    .line 1928
    goto :goto_0

    .line 1924
    :cond_2
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    .line 1925
    nop

    .line 1935
    :goto_0
    return-void
.end method

.method public setVBAProject(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "vbaProjectStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2293
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    .line 2299
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    .local v0, "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    nop

    .line 2303
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    .line 2305
    .local v1, "opc":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2306
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    .line 2307
    .local v2, "relationship":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 2308
    .local v2, "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 2309
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 2310
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v2, v3

    .line 2313
    .local v2, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    invoke-static {p1, v2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2316
    nop

    .line 2317
    return-void

    .line 2315
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 2300
    .end local v0    # "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v1    # "opc":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 2301
    .restart local v0    # "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVBAProject(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 2
    .param p1, "macroWorkbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 2325
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    return-void

    .line 2328
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object v0

    .line 2329
    .local v0, "vbaProjectStream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 2330
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setVBAProject(Ljava/io/InputStream;)V

    .line 2332
    :cond_1
    return-void
.end method

.method public setWorkbookPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 2103
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2104
    return-void

    .line 2106
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string/jumbo v1, "workbook"

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    .line 2107
    return-void
.end method

.method public setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    .line 2280
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    nop

    .line 2284
    return-void

    .line 2281
    :catch_0
    move-exception v0

    .line 2282
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 1192
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method

.method public unLock()V
    .locals 1

    .line 2151
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetWorkbookProtection()V

    .line 2154
    :cond_0
    return-void
.end method

.method public unLockRevision()V
    .locals 2

    .line 2092
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    .line 2093
    return-void
.end method

.method public unLockStructure()V
    .locals 2

    .line 2064
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    .line 2065
    return-void
.end method

.method public unLockWindows()V
    .locals 2

    .line 2078
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    .line 2079
    return-void
.end method

.method updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Lorg/apache/poi/xssf/usermodel/XSSFName;
    .param p2, "oldName"    # Ljava/lang/String;

    .line 1297
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/ListValuedMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1301
    return-void

    .line 1298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name was not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateRevisionsPassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 2141
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2144
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "revisions"

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public validateWorkbookPassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 2115
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2116
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2118
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string/jumbo v1, "workbook"

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
