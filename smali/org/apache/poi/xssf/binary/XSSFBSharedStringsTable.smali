.class public Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
.super Ljava/lang/Object;
.source "XSSFBSharedStringsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private count:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueCount:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    .line 62
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 69
    .local v1, "sstPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    .line 71
    .end local v1    # "sstPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    .line 35
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return p1
.end method

.method static synthetic access$202(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;-><init>(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V

    .line 82
    .local v0, "reader":Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->parse()V

    .line 83
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 96
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return v0
.end method
