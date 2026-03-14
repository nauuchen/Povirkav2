.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;
.super Lorg/apache/poi/POIXMLDocument;
.source "XSLFSlideShow.java"


# instance fields
.field private embedds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field private presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 10
    .param p1, "container"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embedds:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlideReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 82
    .local v3, "ctSlide":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    .line 83
    .local v4, "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 85
    .local v5, "slidePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v5, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 86
    .local v7, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    sget-object v8, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 87
    goto :goto_1

    .line 90
    :cond_1
    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embedds:Ljava/util/List;

    invoke-virtual {v5, v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_2
    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v5, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 94
    .restart local v7    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embedds:Ljava/util/List;

    invoke-virtual {v5, v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    .end local v3    # "ctSlide":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .end local v4    # "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v5    # "slidePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getAllEmbedds()Ljava/util/List;
    .locals 1
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

    .line 260
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embedds:Ljava/util/List;

    return-object v0
.end method

.method public getNodesPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 5
    .param p1, "parentSlide"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 186
    .local v0, "slidePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    .local v2, "notes":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    nop

    .line 191
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    return-object v1

    .line 195
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 200
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 196
    .end local v1    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting 0 or 1 notes for a slide, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v2    # "notes":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :catch_1
    move-exception v2

    .line 188
    .local v1, "notes":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getNotes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 3
    .param p1, "slide"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getNodesPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 212
    .local v0, "notesPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 215
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;

    move-result-object v1

    .line 218
    .local v1, "notesDoc":Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->getNotes()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v2

    return-object v2
.end method

.method public getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    return-object v0
.end method

.method public getSlide(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;
    .locals 3
    .param p1, "slide"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 172
    .local v0, "slidePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;

    move-result-object v1

    .line 174
    .local v1, "slideDoc":Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;->getSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object v2

    return-object v2
.end method

.method public getSlideComments(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 5
    .param p1, "slide"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 230
    .local v0, "slidePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .local v2, "commentRels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    nop

    .line 235
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 237
    return-object v1

    .line 239
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 244
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 247
    .local v1, "cPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    move-result-object v3

    .line 249
    .local v3, "commDoc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v4
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 250
    .end local v1    # "cPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v3    # "commDoc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 240
    .end local v1    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting 0 or 1 comments for a slide, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v2    # "commentRels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :catch_1
    move-exception v2

    .line 232
    .local v1, "commentRels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSlideMaster(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
    .locals 3
    .param p1, "master"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlideMasterPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 152
    .local v0, "masterPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;

    move-result-object v1

    .line 154
    .local v1, "masterDoc":Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->getSldMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v2

    return-object v2
.end method

.method public getSlideMasterPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2
    .param p1, "master"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 138
    .local v0, "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 141
    .end local v0    # "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/xmlbeans/XmlException;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSlideMasterReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;

    move-result-object v0

    return-object v0
.end method

.method public getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2
    .param p1, "slide"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 160
    .local v0, "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    .end local v0    # "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/xmlbeans/XmlException;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSlideReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSldIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    return-object v0
.end method
