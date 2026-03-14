.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.source "XSSFBReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
    }
.end annotation


# static fields
.field private static final WORKSHEET_RELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->log:Lorg/apache/poi/util/POILogger;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 79
    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->log:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method


# virtual methods
.method public getAbsPathMetadata()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 93
    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v1, "p":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->parse()V

    .line 95
    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .end local v1    # "p":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getSheetsData()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    return-object v0
.end method

.method public getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRelation;->STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 118
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method
