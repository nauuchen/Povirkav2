.class public Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.super Ljava/lang/Object;
.source "XSSFBHyperlinksTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;,
        Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final RECORDS:Ljava/util/BitSet;


# instance fields
.field private final hyperlinkRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private relIdToHyperlink:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->RECORDS:Ljava/util/BitSet;

    .line 50
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "sheetPart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->loadUrlsFromSheetRels(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 63
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;-><init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;Ljava/io/InputStream;)V

    .line 64
    .local v0, "scraper":Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->parse()V

    .line 65
    return-void
.end method

.method static synthetic access$100()Ljava/util/BitSet;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->RECORDS:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    .line 44
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    .line 44
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    return-object v0
.end method

.method private loadUrlsFromSheetRels(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 5
    .param p1, "sheetPart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 112
    :try_start_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 113
    .local v1, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_0
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :goto_1
    return-void
.end method


# virtual methods
.method public findHyperlinkRecord(Lorg/apache/poi/ss/util/CellAddress;)Ljava/util/List;
    .locals 6
    .param p1, "cellAddress"    # Lorg/apache/poi/ss/util/CellAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "overlapping":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;>;"
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 99
    .local v1, "targetCellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    .line 100
    .local v3, "record":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/poi/ss/util/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 104
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "record":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    :cond_1
    goto :goto_0

    .line 107
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getHyperLinks()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;-><init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 74
    .local v0, "hyperlinkMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/util/CellAddress;Ljava/util/List<Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;>;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    .line 75
    .local v2, "hyperlinkRecord":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    new-instance v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 77
    .local v3, "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 78
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;>;"
    if-nez v4, :cond_0

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 81
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v2    # "hyperlinkRecord":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    .end local v3    # "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;>;"
    goto :goto_0

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method
