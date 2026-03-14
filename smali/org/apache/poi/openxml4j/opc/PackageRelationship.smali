.class public final Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.super Ljava/lang/Object;
.source "PackageRelationship.java"


# static fields
.field public static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "Id"

.field public static final RELATIONSHIPS_TAG_NAME:Ljava/lang/String; = "Relationships"

.field public static final RELATIONSHIP_TAG_NAME:Ljava/lang/String; = "Relationship"

.field public static final TARGET_ATTRIBUTE_NAME:Ljava/lang/String; = "Target"

.field public static final TARGET_MODE_ATTRIBUTE_NAME:Ljava/lang/String; = "TargetMode"

.field public static final TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "Type"

.field private static containerRelationshipPart:Ljava/net/URI;


# instance fields
.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private id:Ljava/lang/String;

.field private relationshipType:Ljava/lang/String;

.field private source:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

.field private targetUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "/_rels/.rels"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->containerRelationshipPart:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "sourcePart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p3, "targetUri"    # Ljava/net/URI;
    .param p4, "targetMode"    # Lorg/apache/poi/openxml4j/opc/TargetMode;
    .param p5, "relationshipType"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-eqz p1, :cond_3

    .line 102
    if-eqz p3, :cond_2

    .line 104
    if-eqz p5, :cond_1

    .line 106
    if-eqz p6, :cond_0

    .line 109
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 110
    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 111
    iput-object p3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    .line 112
    iput-object p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    .line 113
    iput-object p5, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    .line 115
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relationshipType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pkg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContainerPartRelationship()Ljava/net/URI;
    .locals 1

    .line 142
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->containerRelationshipPart:Ljava/net/URI;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 123
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    iget-object v3, v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    iget-object v3, v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getRelationshipType()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public getSourceURI()Ljava/net/URI;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    return-object v0

    .line 181
    :cond_0
    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    return-object v0
.end method

.method public getTargetURI()Ljava/net/URI;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/TargetMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "id=null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-nez v1, :cond_1

    const-string v1, " - container=null"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " - relationshipType=null"

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - relationshipType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v1, :cond_3

    const-string v1, " - source=null"

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    if-nez v1, :cond_4

    const-string v1, " - target=null"

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-nez v1, :cond_5

    const-string v1, ",targetMode=null"

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",targetMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
