.class public abstract Lorg/apache/poi/openxml4j/opc/PackagePart;
.super Ljava/lang/Object;
.source "PackagePart.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/RelationshipSource;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/openxml4j/opc/RelationshipSource;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/PackagePart;",
        ">;"
    }
.end annotation


# instance fields
.field protected _container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field protected _contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

.field private _isDeleted:Z

.field private _isRelationshipPart:Z

.field protected _partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field private _relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 1
    .param p1, "pack"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p3}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;)V

    .line 128
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;)V
    .locals 1
    .param p1, "pack"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p3, "contentType"    # Lorg/apache/poi/openxml4j/opc/internal/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;Z)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;Z)V
    .locals 1
    .param p1, "pack"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p3, "contentType"    # Lorg/apache/poi/openxml4j/opc/internal/ContentType;
    .param p4, "loadRelationships"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 103
    iput-object p3, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    .line 104
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 107
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    .line 110
    if-eqz p4, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->loadRelationships()V

    .line 112
    :cond_0
    return-void
.end method

.method private getRelationshipsCore(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    .line 432
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->throwExceptionIfRelationship()V

    .line 434
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 436
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadRelationships()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    if-nez v0, :cond_0

    .line 564
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->throwExceptionIfRelationship()V

    .line 565
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 567
    :cond_0
    return-void
.end method

.method private throwExceptionIfRelationship()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 552
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can do this operation on a relationship part !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "relationshipType"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0
.end method

.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "relationshipType"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 179
    if-eqz p1, :cond_2

    .line 182
    if-eqz p2, :cond_1

    .line 186
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 192
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 195
    .local v0, "targetURI":Ljava/net/URI;
    nop

    .line 197
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1, v0, v2, p2, p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    return-object v1

    .line 193
    .end local v0    # "targetURI":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 194
    .restart local v0    # "targetURI":Ljava/net/URI;
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid target - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v0    # "targetURI":Ljava/net/URI;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relationshipType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target is null for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1
    .param p1, "targetURI"    # Ljava/net/URI;
    .param p2, "targetMode"    # Lorg/apache/poi/openxml4j/opc/TargetMode;
    .param p3, "relationshipType"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0
.end method

.method public addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2
    .param p1, "targetURI"    # Ljava/net/URI;
    .param p2, "targetMode"    # Lorg/apache/poi/openxml4j/opc/TargetMode;
    .param p3, "relationshipType"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    .line 322
    if-eqz p1, :cond_4

    .line 325
    if-eqz p2, :cond_3

    .line 328
    if-eqz p3, :cond_2

    .line 334
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0

    .line 336
    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Rule M1.25: The Relationships part shall not have relationships to any other part."

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relationshipType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPartName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1
    .param p1, "targetPartName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p2, "targetMode"    # Lorg/apache/poi/openxml4j/opc/TargetMode;
    .param p3, "relationshipType"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2
    .param p1, "targetPartName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p2, "targetMode"    # Lorg/apache/poi/openxml4j/opc/TargetMode;
    .param p3, "relationshipType"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    .line 252
    if-eqz p1, :cond_4

    .line 255
    if-eqz p2, :cond_3

    .line 258
    if-eqz p3, :cond_2

    .line 262
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0

    .line 263
    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Rule M1.25: The Relationships part shall not have relationships to any other part."

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relationshipType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPartName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 0

    .line 727
    return-void
.end method

.method public clearRelationships()V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->clear()V

    .line 355
    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePart;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/PackagePart;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 664
    if-nez p1, :cond_0

    .line 665
    const/4 v0, -0x1

    return v0

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result v0

    return v0
.end method

.method public findExistingRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1
    .param p1, "packagePart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 137
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->findExistingInternalRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0
.end method

.method public abstract flush()V
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeDetails()Lorg/apache/poi/openxml4j/opc/internal/ContentType;
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStreamImpl()Ljava/io/InputStream;

    move-result-object v0

    .line 505
    .local v0, "inStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 509
    return-object v0

    .line 506
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t obtain the input stream from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract getInputStreamImpl()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .line 524
    instance-of v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    .line 529
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 531
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    iput-object v1, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 536
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStreamImpl()Ljava/io/OutputStream;

    move-result-object v0

    .line 537
    .local v0, "outStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 532
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v2, "Can\'t create a temporary part !"

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    .end local v0    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStreamImpl()Ljava/io/OutputStream;

    move-result-object v0

    .line 540
    .local v0, "outStream":Ljava/io/OutputStream;
    :goto_0
    return-object v0
.end method

.method protected abstract getOutputStreamImpl()Ljava/io/OutputStream;
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-object v0
.end method

.method public getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 6
    .param p1, "rel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipExists(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    .line 477
    .local v0, "target":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "t":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const/4 v3, 0x0

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid target URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 487
    .end local v1    # "t":Ljava/lang/String;
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 488
    .local v1, "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 489
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-eqz v2, :cond_1

    .line 492
    return-object v2

    .line 490
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No part found for relationship "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    .end local v0    # "target":Ljava/net/URI;
    .end local v1    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t start with this part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    return-object v0
.end method

.method public getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsCore(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    return-object v0
.end method

.method public getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1
    .param p1, "relationshipType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    .line 412
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsCore(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 648
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasRelationships()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isDeleted:Z

    return v0
.end method

.method public isRelationshipExists(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Z
    .locals 2
    .param p1, "rel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 461
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelationshipPart()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isRelationshipPart:Z

    return v0
.end method

.method public abstract load(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation
.end method

.method public removeRelationship(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    .line 366
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->removeRelationship(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public abstract save(Ljava/io/OutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    goto :goto_0

    .line 612
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->unregisterPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    .line 613
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    .line 614
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->registerPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 616
    :goto_0
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "isDeleted"    # Z

    .line 641
    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_isDeleted:Z

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Content Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
