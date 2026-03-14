.class public Lorg/apache/poi/xssf/model/ExternalLinksTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "ExternalLinksTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;
    }
.end annotation


# instance fields
.field private link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 48
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    .line 49
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->addNewExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->readFrom(Ljava/io/InputStream;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 77
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 78
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->writeTo(Ljava/io/OutputStream;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 80
    return-void
.end method

.method public getCTExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    return-object v0
.end method

.method public getDefinedNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    move-result-object v0

    .line 135
    .local v0, "extNames":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/usermodel/Name;>;"
    move-object v2, v0

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 137
    .local v5, "extName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
    new-instance v6, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;

    invoke-direct {v6, p0, v5}, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;-><init>(Lorg/apache/poi/xssf/model/ExternalLinksTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v5    # "extName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-object v1
.end method

.method public getLinkedFileName()Ljava/lang/String;
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "rId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    .line 97
    .local v1, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v2, v3, :cond_0

    .line 98
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSheetNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->getSheetNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    move-result-object v0

    .line 125
    .local v0, "sheetNames":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 127
    .local v5, "name":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;->getVal()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v5    # "name":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-object v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    move-result-object v0

    .line 63
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->getExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLinkedFileName(Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "rId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/externalLinkPath"

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    .line 119
    .local v1, "newRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->setId(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    move-result-object v0

    .line 70
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->setExternalLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;)V

    .line 71
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 72
    return-void
.end method
