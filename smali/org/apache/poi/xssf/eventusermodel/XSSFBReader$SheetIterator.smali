.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
.source "XSSFBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetIterator"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "wb"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "x1"    # Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;
    .locals 3
    .param p1, "wb"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    .line 140
    .local v0, "sheetRefLoader":Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->parse()V

    .line 141
    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->getSheets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use getXSSFBSheetComments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSheetRelationships()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$100()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .locals 8

    .line 155
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 159
    .local v0, "sheetPkg":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    .line 161
    .local v2, "commentsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 162
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    .line 163
    .local v3, "comments":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    .line 167
    .local v4, "commentsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 168
    .local v5, "commentsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 164
    .end local v4    # "commentsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v5    # "commentsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_1
    :goto_0
    return-object v1

    .line 174
    .end local v2    # "commentsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .end local v3    # "comments":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_2
    nop

    .line 175
    return-object v1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    return-object v1
.end method
