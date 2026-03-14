.class public Lorg/apache/poi/xssf/model/StylesTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "StylesTable.java"


# static fields
.field public static final FIRST_CUSTOM_STYLE_ID:I = 0xa5

.field private static final FIRST_USER_DEFINED_NUMBER_FORMAT_ID:S = 0xa4s

.field private static final MAXIMUM_STYLE_ID:I


# instance fields
.field private MAXIMUM_NUMBER_OF_DATA_FORMATS:I

.field private final borders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation
.end field

.field private doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

.field private final dxfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;",
            ">;"
        }
    .end annotation
.end field

.field private final fills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation
.end field

.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private final numberFormats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleXfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field

.field private final tableStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/TableStyle;",
            ">;"
        }
    .end annotation
.end field

.field private theme:Lorg/apache/poi/xssf/model/ThemesTable;

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final xfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxCellStyles()I

    move-result v0

    sput v0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 63
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    .line 73
    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 89
    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    .line 130
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    .line 131
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->addNewStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    .line 133
    invoke-direct {p0}, Lorg/apache/poi/xssf/model/StylesTable;->initialize()V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 63
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    .line 73
    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 89
    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    .line 141
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->readFrom(Ljava/io/InputStream;)V

    .line 142
    return-void
.end method

.method private static createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 1

    .line 727
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 728
    .local v0, "ctBorder":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 729
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 730
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 731
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 732
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 733
    return-object v0
.end method

.method private static createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 4

    .line 738
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 739
    .local v0, "ctFill":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    .line 740
    aget-object v1, v0, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    .line 741
    return-object v0
.end method

.method private static createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 4

    .line 745
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    .line 746
    .local v0, "ctFont":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 747
    .local v1, "xssfFont":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeightInPoints(S)V

    .line 748
    sget-short v2, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setColor(S)V

    .line 749
    const-string v2, "Calibri"

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    .line 750
    sget-object v2, Lorg/apache/poi/ss/usermodel/FontFamily;->SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFamily(Lorg/apache/poi/ss/usermodel/FontFamily;)V

    .line 751
    sget-object v2, Lorg/apache/poi/ss/usermodel/FontScheme;->MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setScheme(Lorg/apache/poi/ss/usermodel/FontScheme;)V

    .line 752
    return-object v1
.end method

.method private static createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 3

    .line 719
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    .line 720
    .local v0, "ctXf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    .line 721
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    .line 722
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    .line 723
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 724
    return-object v0
.end method

.method private getNumberFormatId(Ljava/lang/String;)S
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

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

    .line 274
    .local v1, "numFmt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    return v2

    .end local v1    # "numFmt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 278
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number format not in style table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize()V
    .locals 7

    .line 701
    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    .line 702
    .local v0, "xssfFont":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    .line 705
    .local v1, "ctFill":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    .line 709
    .local v2, "ctBorder":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-direct {v4, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v3

    .line 712
    .local v3, "styleXf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    iget-object v4, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v4

    .line 714
    .local v4, "xf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    .line 715
    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    return-void
.end method


# virtual methods
.method public _getDXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 587
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public _getStyleXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method _getXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 694
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 695
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->writeTo(Ljava/io/OutputStream;)V

    .line 696
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 697
    return-void
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 7

    .line 814
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    sget v1, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    if-gt v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 820
    .local v0, "xfSize":I
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v1

    .line 821
    .local v1, "xf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    .line 822
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    .line 823
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    .line 824
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 825
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    .line 826
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I

    move-result v2

    .line 827
    .local v2, "indexXf":I
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v3, v4, v5, p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v3

    .line 815
    .end local v0    # "xfSize":I
    .end local v1    # "xf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .end local v2    # "indexXf":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The maximum number of Cell Styles was exceeded. You can define up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " style in a .xlsx Workbook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureThemesTable()V
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 182
    return-void
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 3
    .param p1, "bold"    # Z
    .param p2, "color"    # S
    .param p3, "fontHeight"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "italic"    # Z
    .param p6, "strikeout"    # Z
    .param p7, "typeOffset"    # S
    .param p8, "underline"    # B

    .line 834
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 835
    .local v1, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getBold()Z

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getColor()S

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeight()S

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getItalic()Z

    move-result v2

    if-ne v2, p5, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getStrikeout()Z

    move-result v2

    if-ne v2, p6, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getTypeOffset()S

    move-result v2

    if-ne v2, p7, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getUnderline()B

    move-result v2

    if-ne v2, p8, :cond_0

    .line 844
    return-object v1

    .end local v1    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_0
    goto :goto_0

    .line 847
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    .locals 1
    .param p1, "idx"    # I

    .line 438
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    return-object v0
.end method

.method public getBorders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTStylesheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 582
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 2
    .param p1, "idx"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 520
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCellXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .param p1, "idx"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    return-object v0
.end method

.method public getDxfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .locals 1
    .param p1, "idx"    # I
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 757
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    return-object v0
.end method

.method public getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/TableStyle;

    return-object v0
.end method

.method public getExplicitTableStyleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    .locals 1
    .param p1, "idx"    # I

    .line 459
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    return-object v0
.end method

.method public getFills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1
    .param p1, "idx"    # I

    .line 378
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    return-object v0
.end method

.method public getFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-object v0
.end method

.method public getMaxNumberOfDataFormats()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    return v0
.end method

.method public getNumCellStyles()I
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumDataFormats()I
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getNumberFormatAt(S)Ljava/lang/String;
    .locals 2
    .param p1, "fmtId"    # S

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 6
    .param p1, "idx"    # I

    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "styleXfId":I
    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 423
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v1

    long-to-int v0, v1

    .line 426
    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v1, p1, v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v1

    .line 419
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 799
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 801
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v1

    return-object v1
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    return-object v0
.end method

.method public putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    .line 449
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 451
    return v0

    .line 453
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 455
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public putCellStyleXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .param p1, "cellStyleXf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 536
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .param p1, "cellXf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 508
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public putDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)I
    .locals 1
    .param p1, "dxf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 769
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public putFill(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;)I
    .locals 2
    .param p1, "fill"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    .line 486
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 487
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 488
    return v0

    .line 490
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;)I
    .locals 1
    .param p1, "font"    # Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I

    move-result v0

    return v0
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I
    .locals 2
    .param p1, "font"    # Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .param p2, "forceRegistration"    # Z

    .line 392
    const/4 v0, -0x1

    .line 393
    .local v0, "idx":I
    if-nez p2, :cond_0

    .line 394
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 397
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 398
    return v0

    .line 401
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return v0
.end method

.method public putNumberFormat(Ljava/lang/String;)I
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Found the format, but couldn\'t figure out where - should never happen!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    if-ge v0, v1, :cond_3

    .line 309
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const/16 v0, 0xa4

    .local v0, "formatIndex":S
    goto :goto_0

    .line 317
    .end local v0    # "formatIndex":S
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 318
    .local v0, "nextKey":S
    if-ltz v0, :cond_2

    .line 323
    const/16 v1, 0xa4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    move v0, v1

    .line 326
    .local v0, "formatIndex":S
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return v0

    .line 319
    .local v0, "nextKey":S
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cowardly avoiding creating a number format with a negative id.This is probably due to arithmetic overflow."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "nextKey":S
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum number of Data Formats was exceeded. You can define up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " formats in a .xlsx Workbook."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putNumberFormat(SLjava/lang/String;)V
    .locals 2
    .param p1, "index"    # S
    .param p2, "fmt"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 429
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    .line 431
    .local v0, "mainXF":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 18
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 192
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    .line 194
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    .line 199
    .local v0, "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->fromColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;

    move-result-object v3

    .line 200
    .local v3, "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    if-eqz v3, :cond_0

    iput-object v3, v1, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 202
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getNumFmts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v4

    .line 203
    .local v4, "ctfmts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
    if-eqz v4, :cond_1

    .line 204
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->getNumFmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v5

    .local v5, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 205
    .local v8, "nfmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v9

    long-to-int v10, v9

    int-to-short v9, v10

    .line 206
    .local v9, "formatId":S
    iget-object v10, v1, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    nop

    .end local v8    # "nfmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    .end local v9    # "formatId":S
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    .end local v5    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v5

    .line 211
    .local v5, "ctfonts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;
    if-eqz v5, :cond_2

    .line 212
    const/4 v6, 0x0

    .line 213
    .local v6, "idx":I
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->getFontArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v7

    .local v7, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 215
    .local v10, "font":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    new-instance v11, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    iget-object v12, v1, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v11, v10, v6, v12}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 216
    .local v11, "f":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v12, v1, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    nop

    .end local v10    # "font":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .end local v11    # "f":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    add-int/lit8 v6, v6, 0x1

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 220
    .end local v6    # "idx":I
    .end local v7    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v6

    .line 221
    .local v6, "ctfills":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;
    if-eqz v6, :cond_3

    .line 222
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->getFillArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v7

    .local v7, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    array-length v8, v7

    .restart local v8    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 223
    .local v10, "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    iget-object v11, v1, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v12, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    iget-object v13, v1, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v12, v10, v13}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    nop

    .end local v10    # "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 227
    .end local v7    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v7

    .line 228
    .local v7, "ctborders":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;
    if-eqz v7, :cond_4

    .line 229
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->getBorderArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v8

    .local v8, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 230
    .local v11, "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    iget-object v12, v1, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v13, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v14, v1, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v13, v11, v14}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    nop

    .end local v11    # "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 234
    .end local v8    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v8

    .line 235
    .local v8, "cellXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
    if-eqz v8, :cond_5

    iget-object v9, v1, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v9

    .line 238
    .local v9, "cellStyleXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
    if-eqz v9, :cond_6

    iget-object v10, v1, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v10

    .line 241
    .local v10, "styleDxfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
    if-eqz v10, :cond_7

    iget-object v11, v1, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->getDxfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getTableStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;

    move-result-object v11

    .line 244
    .local v11, "ctTableStyles":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
    if-eqz v11, :cond_9

    .line 245
    const/4 v12, 0x0

    .line 246
    .local v12, "idx":I
    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->getTableStyleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    .line 247
    .local v14, "style":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
    iget-object v15, v1, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    move-object/from16 v16, v0

    .end local v0    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .local v16, "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    invoke-interface {v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    move-object/from16 v17, v3

    .end local v3    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .local v17, "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    iget-object v3, v1, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v2, v12, v10, v14, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;-><init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    nop

    .end local v14    # "style":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto :goto_4

    .line 246
    .end local v16    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .end local v17    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .restart local v0    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .restart local v3    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v0    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .end local v3    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .restart local v16    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .restart local v17    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    goto :goto_5

    .line 244
    .end local v12    # "idx":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .end local v17    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .restart local v0    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .restart local v3    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 254
    .end local v0    # "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .end local v3    # "customColors":Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .end local v4    # "ctfmts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
    .end local v5    # "ctfonts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;
    .end local v6    # "ctfills":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;
    .end local v7    # "ctborders":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;
    .end local v8    # "cellXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
    .end local v9    # "cellStyleXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
    .end local v10    # "styleDxfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
    .end local v11    # "ctTableStyles":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
    :goto_5
    nop

    .line 255
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeNumberFormat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result v0

    .line 374
    .local v0, "id":S
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->removeNumberFormat(S)Z

    move-result v1

    return v1
.end method

.method public removeNumberFormat(S)Z
    .locals 9
    .param p1, "index"    # S

    .line 352
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, "fmt":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 354
    .local v1, "removed":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 355
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 356
    .local v3, "style":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetNumFmtId()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getNumFmtId()J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 357
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetApplyNumberFormat()V

    .line 358
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetNumFmtId()V

    .end local v3    # "style":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    :cond_1
    goto :goto_1

    .line 362
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return v1
.end method

.method protected replaceCellStyleXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cellStyleXf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-void
.end method

.method public replaceCellXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cellXf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-void
.end method

.method public setMaxNumberOfDataFormats(I)V
    .locals 2
    .param p1, "num"    # I

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumDataFormats()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 101
    if-gez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum Number of Data Formats must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the maximum number of data formats less than the current quantity.Data formats must be explicitly removed (via StylesTable.removeNumberFormat) before the limit can be decreased."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    .line 109
    return-void
.end method

.method public setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 2
    .param p1, "theme"    # Lorg/apache/poi/xssf/model/ThemesTable;

    .line 159
    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->setColorMap(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 166
    .local v1, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .end local v1    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    goto :goto_0

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    .line 169
    .local v1, "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .end local v1    # "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    goto :goto_1

    .line 171
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .param p1, "wb"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 145
    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 146
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    .line 604
    .local v0, "styleSheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v1

    .line 605
    .local v1, "formats":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->setCount(J)V

    .line 606
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 607
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/lang/String;>;"
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->addNewNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v4

    .line 608
    .local v4, "ctFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setNumFmtId(J)V

    .line 609
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setFormatCode(Ljava/lang/String;)V

    .line 610
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/lang/String;>;"
    .end local v4    # "ctFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    goto :goto_0

    .line 611
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setNumFmts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;)V

    .line 615
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v2

    .line 616
    .local v2, "ctFonts":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;
    if-nez v2, :cond_1

    .line 617
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v2

    .line 619
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setCount(J)V

    .line 620
    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 621
    .local v3, "ctfnt":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    const/4 v4, 0x0

    .line 622
    .local v4, "idx":I
    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .local v6, "f":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "idx":I
    .local v7, "idx":I
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v8

    aput-object v8, v3, v4

    move v4, v7

    .end local v6    # "f":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    goto :goto_1

    .line 623
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "idx":I
    .restart local v4    # "idx":I
    :cond_2
    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setFontArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    .line 624
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFonts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;)V

    .line 627
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v5

    .line 628
    .local v5, "ctFills":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;
    if-nez v5, :cond_3

    .line 629
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v5

    .line 631
    :cond_3
    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setCount(J)V

    .line 632
    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 633
    .local v6, "ctf":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    const/4 v4, 0x0

    .line 634
    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    .local v8, "f":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "idx":I
    .local v9, "idx":I
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v10

    aput-object v10, v6, v4

    move v4, v9

    .end local v8    # "f":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    goto :goto_2

    .line 635
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "idx":I
    .restart local v4    # "idx":I
    :cond_4
    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setFillArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    .line 636
    invoke-interface {v0, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFills(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;)V

    .line 639
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v7

    .line 640
    .local v7, "ctBorders":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;
    if-nez v7, :cond_5

    .line 641
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v7

    .line 643
    :cond_5
    iget-object v8, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setCount(J)V

    .line 644
    iget-object v8, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 645
    .local v8, "ctb":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    const/4 v4, 0x0

    .line 646
    iget-object v9, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    .local v10, "b":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "idx":I
    .local v11, "idx":I
    invoke-virtual {v10}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v12

    aput-object v12, v8, v4

    move v4, v11

    .end local v10    # "b":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    goto :goto_3

    .line 647
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "idx":I
    .restart local v4    # "idx":I
    :cond_6
    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setBorderArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    .line 648
    invoke-interface {v0, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setBorders(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;)V

    .line 651
    iget-object v9, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 652
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v9

    .line 653
    .local v9, "ctXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
    if-nez v9, :cond_7

    .line 654
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v9

    .line 656
    :cond_7
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setCount(J)V

    .line 657
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    .line 660
    invoke-interface {v0, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;)V

    .line 664
    .end local v9    # "ctXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
    :cond_8
    iget-object v9, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 665
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v9

    .line 666
    .local v9, "ctSXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
    if-nez v9, :cond_9

    .line 667
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v9

    .line 669
    :cond_9
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setCount(J)V

    .line 670
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    .line 673
    invoke-interface {v0, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellStyleXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;)V

    .line 677
    .end local v9    # "ctSXfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
    :cond_a
    iget-object v9, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    .line 678
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v9

    .line 679
    .local v9, "ctDxfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
    if-nez v9, :cond_b

    .line 680
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v9

    .line 682
    :cond_b
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setCount(J)V

    .line 683
    iget-object v10, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setDxfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V

    .line 684
    invoke-interface {v0, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setDxfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;)V

    .line 688
    .end local v9    # "ctDxfs":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
    :cond_c
    iget-object v9, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    sget-object v10, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v9, p1, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 689
    return-void
.end method
