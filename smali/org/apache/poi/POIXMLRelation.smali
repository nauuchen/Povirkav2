.class public abstract Lorg/apache/poi/POIXMLRelation;
.super Ljava/lang/Object;
.source "POIXMLRelation.java"


# static fields
.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;"
        }
    .end annotation
.end field

.field private _defaultName:Ljava/lang/String;

.field private _relation:Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/poi/POIXMLRelation;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLRelation;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .param p3, "defaultName"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/POIXMLRelation;->_type:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/poi/POIXMLRelation;->_relation:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/apache/poi/POIXMLRelation;->_defaultName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lorg/apache/poi/POIXMLRelation;->_cls:Ljava/lang/Class;

    .line 72
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;
    .locals 8
    .param p1, "corePart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 160
    .local v0, "prc":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/openxml4j/opc/PackageRelationship;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 163
    .local v2, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    .line 164
    .local v3, "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    .line 165
    .local v4, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    return-object v5

    .line 167
    .end local v2    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v3    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    sget-object v2, Lorg/apache/poi/POIXMLRelation;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No part "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 168
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultFileName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_defaultName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 122
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_defaultName:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_defaultName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameIndex(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/Integer;
    .locals 3
    .param p1, "part"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 137
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_defaultName:Ljava/lang/String;

    const-string v1, "#"

    const-string v2, "(\\d+)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_relation:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/poi/POIXMLRelation;->_cls:Ljava/lang/Class;

    return-object v0
.end method
