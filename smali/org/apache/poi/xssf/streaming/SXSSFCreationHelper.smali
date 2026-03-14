.class public Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;
.super Ljava/lang/Object;
.source "SXSSFCreationHelper.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

.field private final wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    .line 53
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 54
    return-void
.end method


# virtual methods
.method public createAreaReference(Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2
    .param p1, "reference"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createAreaReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "bottomRight"    # Lorg/apache/poi/ss/util/CellReference;

    .line 98
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createExtendedColor()Lorg/apache/poi/ss/usermodel/ExtendedColor;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    .locals 2

    .line 64
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "type"    # Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 74
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SXSSF doesn\'t support Rich Text Strings, any formatting information will be lost"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
