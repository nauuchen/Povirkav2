.class public abstract Lorg/apache/poi/POIXMLDocument;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "POIXMLDocument.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DOCUMENT_CREATOR:Ljava/lang/String; = "Apache POI"

.field public static final OLE_OBJECT_REL_TYPE:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

.field public static final PACK_OBJECT_REL_TYPE:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"


# instance fields
.field private pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private properties:Lorg/apache/poi/POIXMLProperties;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;->init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "coreDocumentRel"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;->init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 68
    return-void
.end method

.method private init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 71
    iput-object p1, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 76
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/common/SystemCache;->setSaxLoader(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    .line 191
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 193
    :cond_1
    return-void
.end method

.method public abstract getAllEmbedds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation
.end method

.method protected getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getProperties()Lorg/apache/poi/POIXMLProperties;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    new-instance v0, Lorg/apache/poi/POIXMLProperties;

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLProperties;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;

    return-object v0
.end method

.method protected getRelatedByType(Ljava/lang/String;)[Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 6
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 127
    .local v0, "partsC":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 128
    .local v1, "parts":[Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v2, 0x0

    .line 129
    .local v2, "count":I
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 130
    .local v4, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    aput-object v5, v1, v2

    .line 131
    nop

    .end local v4    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v1
.end method

.method protected final load(Lorg/apache/poi/POIXMLFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/apache/poi/POIXMLFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/POIXMLDocumentPart;>;"
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIXMLDocument;->read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .line 169
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->onDocumentRead()V

    .line 170
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 214
    .local v0, "p":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v1, "context":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {p0, v1}, Lorg/apache/poi/POIXMLDocument;->onSave(Ljava/util/Set;)V

    .line 222
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 225
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties;->commit()V

    .line 227
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V

    .line 228
    return-void

    .line 215
    .end local v1    # "context":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot write data, document seems to have been closed already"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
