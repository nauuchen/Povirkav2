.class public Lorg/apache/poi/POIXMLDocumentPart;
.super Ljava/lang/Object;
.source "POIXMLDocumentPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private coreDocumentRel:Ljava/lang/String;

.field private packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private parent:Lorg/apache/poi/POIXMLDocumentPart;

.field private relationCounter:I

.field private relations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLDocumentPart;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    .line 164
    iput-object p2, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 165
    iput-object p1, p0, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    .line 166
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 118
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "coreDocumentRel"    # Ljava/lang/String;

    .line 128
    invoke-static {p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 129
    iput-object p2, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 151
    return-void
.end method

.method public static _invokeOnDocumentRead(Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 0
    .param p0, "part"    # Lorg/apache/poi/POIXMLDocumentPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 647
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    .line 648
    return-void
.end method

.method private addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 3
    .param p1, "pr"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .param p2, "part"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 288
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {v2, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->incrementRelationCounter()I

    .line 291
    return-void
.end method

.method private static getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 5
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p1, "coreDocumentRel"    # Ljava/lang/String;

    .line 656
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 658
    .local v0, "coreRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 660
    .local v1, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-eqz v1, :cond_0

    .line 663
    return-object v1

    .line 661
    :cond_0
    new-instance v2, Lorg/apache/poi/POIXMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOXML file structure broken/invalid - core document \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    .end local v1    # "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_1
    const-string v2, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_2

    .line 668
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Strict OOXML isn\'t currently supported, please see bug #57699"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_2
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "OOXML file structure broken/invalid - no core document found!"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .locals 5
    .param p1, "relId"    # Ljava/lang/String;
    .param p2, "relationshipType"    # Lorg/apache/poi/POIXMLRelation;
    .param p3, "part"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 271
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->findExistingRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 272
    .local v0, "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 274
    .local v1, "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {p2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "relType":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v3, v1, v4, v2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 277
    .end local v1    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v2    # "relType":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, p3}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 278
    new-instance v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {v1, v0, p3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    return-object v1
.end method

.method protected commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method protected final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .locals 6
    .param p1, "descriptor"    # Lorg/apache/poi/POIXMLRelation;
    .param p2, "factory"    # Lorg/apache/poi/POIXMLFactory;
    .param p3, "idx"    # I
    .param p4, "noRelation"    # Z

    .line 511
    :try_start_0
    invoke-virtual {p1, p3}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 512
    .local v0, "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    const/4 v1, 0x0

    .line 513
    .local v1, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 514
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez p4, :cond_0

    .line 516
    iget-object v3, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    move-object v1, v3

    .line 518
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/poi/POIXMLFactory;->newDocumentPart(Lorg/apache/poi/POIXMLRelation;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 519
    .local v3, "doc":Lorg/apache/poi/POIXMLDocumentPart;
    iput-object v2, v3, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 520
    iput-object p0, v3, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    .line 521
    if-nez p4, :cond_1

    .line 523
    invoke-direct {p0, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 526
    :cond_1
    new-instance v4, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {v4, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 531
    .end local v0    # "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v1    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v3    # "doc":Lorg/apache/poi/POIXMLDocumentPart;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 530
    .local v0, "pae":Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;
    throw v0
.end method

.method public final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 2
    .param p1, "descriptor"    # Lorg/apache/poi/POIXMLRelation;
    .param p2, "factory"    # Lorg/apache/poi/POIXMLFactory;

    .line 426
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0
.end method

.method public final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1
    .param p1, "descriptor"    # Lorg/apache/poi/POIXMLRelation;
    .param p2, "factory"    # Lorg/apache/poi/POIXMLFactory;
    .param p3, "idx"    # I

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0
.end method

.method decrementRelationCounter()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    .line 105
    return v0
.end method

.method protected final getNextPartNumber(Lorg/apache/poi/POIXMLRelation;I)I
    .locals 7
    .param p1, "descriptor"    # Lorg/apache/poi/POIXMLRelation;
    .param p2, "minIdx"    # I

    .line 462
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 465
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x270f

    invoke-virtual {p1, v2}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 468
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    .line 469
    .local v2, "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    return v3

    .line 474
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 479
    .end local v2    # "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :cond_1
    if-gez p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, p2

    .line 480
    .local v2, "idx":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    .line 481
    .local v4, "maxIdx":I
    :goto_1
    if-gt v2, v4, :cond_4

    .line 482
    invoke-virtual {p1, v2}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 483
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    .line 484
    .local v5, "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v6
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    .line 485
    return v2

    .line 487
    :cond_3
    nop

    .end local v5    # "ppName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    add-int/lit8 v2, v2, 0x1

    .line 488
    goto :goto_1

    .line 492
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "idx":I
    .end local v4    # "maxIdx":I
    :cond_4
    nop

    .line 493
    return v3

    .line 489
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public final getParent()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    return-object v0
.end method

.method public final getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 235
    .local v0, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getRelationCounter()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public final getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;
    .locals 3
    .param p1, "part"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 251
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

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

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 252
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 253
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_0
    goto :goto_0

    .line 256
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRelationParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart$RelationPart;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getRelations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart;>;"
    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 207
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getTargetPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1
    .param p1, "rel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    return-object v0
.end method

.method incrementRelationCounter()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    .line 100
    return v0
.end method

.method protected onDocumentCreate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    return-void
.end method

.method protected onDocumentRead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    return-void
.end method

.method protected onDocumentRemove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    return-void
.end method

.method protected final onSave(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    .local p1, "alreadySaved":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->prepareForCommit()V

    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->commit()V

    .line 391
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

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

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 393
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    .line 394
    .local v2, "p":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    invoke-virtual {v2, p1}, Lorg/apache/poi/POIXMLDocumentPart;->onSave(Ljava/util/Set;)V

    .line 397
    .end local v1    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v2    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    goto :goto_0

    .line 398
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected prepareForCommit()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 409
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    .line 412
    :cond_0
    return-void
.end method

.method protected read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V
    .locals 16
    .param p1, "factory"    # Lorg/apache/poi/POIXMLFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/POIXMLFactory;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 547
    .local p2, "context":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/POIXMLDocumentPart;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 549
    .local v3, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart;

    .line 550
    .local v4, "otherChild":Lorg/apache/poi/POIXMLDocumentPart;
    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    new-instance v5, Lorg/apache/poi/POIXMLException;

    const-string v6, "Unique PackagePart-POIXMLDocumentPart relation broken!"

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 554
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 556
    :cond_2
    iget-object v5, v0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v5

    .line 557
    .local v5, "rels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v6, "readLater":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/POIXMLDocumentPart;>;"
    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 561
    .local v8, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v9, v10, :cond_6

    .line 562
    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v9

    .line 566
    .local v9, "uri":Ljava/net/URI;
    invoke-virtual {v9}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 567
    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v10

    .local v10, "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    goto :goto_2

    .line 569
    .end local v10    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :cond_3
    invoke-static {v9}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v10

    .line 572
    .restart local v10    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :goto_2
    iget-object v11, v0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v11}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v11

    .line 573
    .local v11, "p":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v11, :cond_4

    .line 574
    sget-object v12, Lorg/apache/poi/POIXMLDocumentPart;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped invalid entry "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    const/4 v13, 0x7

    invoke-virtual {v12, v13, v14}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 575
    goto :goto_1

    .line 578
    :cond_4
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/POIXMLDocumentPart;

    .line 579
    .local v12, "childPart":Lorg/apache/poi/POIXMLDocumentPart;
    if-nez v12, :cond_5

    .line 580
    invoke-virtual {v1, v0, v11}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v12

    .line 581
    iput-object v0, v12, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    .line 583
    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_5
    invoke-direct {v0, v8, v12}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 588
    .end local v8    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v9    # "uri":Ljava/net/URI;
    .end local v10    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v11    # "p":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v12    # "childPart":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_6
    goto :goto_1

    .line 591
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/POIXMLDocumentPart;

    .line 592
    .local v8, "childPart":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v8, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V

    .end local v8    # "childPart":Lorg/apache/poi/POIXMLDocumentPart;
    goto :goto_3

    .line 594
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method protected final rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 181
    .local v0, "cores":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 188
    return-void

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to rebase using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parts of the right type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    .line 301
    return-void
.end method

.method protected final removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z
    .locals 3
    .param p1, "part"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "removeUnusedParts"    # Z

    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->decrementRelationCounter()I

    .line 323
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    if-eqz p2, :cond_1

    .line 329
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationCounter()I

    move-result v1

    if-nez v1, :cond_1

    .line 331
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRemove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    nop

    .line 335
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 338
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
