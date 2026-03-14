.class public abstract Lorg/apache/poi/POIXMLFactory;
.super Ljava/lang/Object;
.source "POIXMLFactory.java"


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final ORPHAN_PART:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final PARENT_PART:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const-class v0, Lorg/apache/poi/POIXMLFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/poi/POIXMLDocumentPart;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/POIXMLFactory;->PARENT_PART:[Ljava/lang/Class;

    .line 34
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/POIXMLFactory;->ORPHAN_PART:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/POIXMLDocumentPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public createDocumentPart(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 8
    .param p1, "parent"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLFactory;->getPackageRelationship(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 48
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIXMLFactory;->getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;

    move-result-object v1

    .line 50
    .local v1, "descriptor":Lorg/apache/poi/POIXMLRelation;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object v4

    .line 58
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    :try_start_0
    sget-object v5, Lorg/apache/poi/POIXMLFactory;->PARENT_PART:[Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0

    .line 59
    :catch_1
    move-exception v5

    .line 60
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    sget-object v6, Lorg/apache/poi/POIXMLFactory;->ORPHAN_PART:[Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {p0, v4, v6, v3}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 63
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 51
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    :cond_1
    :goto_1
    sget-object v4, Lorg/apache/poi/POIXMLFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "using default POIXMLDocumentPart for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 52
    new-instance v2, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-direct {v2, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v2
.end method

.method protected abstract getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
.end method

.method protected getPackageRelationship(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 5
    .param p1, "parent"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 126
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "partName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 128
    .local v2, "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 130
    return-object v2

    .line 132
    .end local v2    # "pr":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v3    # "packName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 135
    .end local v0    # "partName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    nop

    .line 137
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "package part isn\'t a child of the parent document."

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "error while determining package relations"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newDocumentPart(Lorg/apache/poi/POIXMLRelation;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 3
    .param p1, "descriptor"    # Lorg/apache/poi/POIXMLRelation;

    .line 104
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
