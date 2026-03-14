.class public Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFCommentAuthors.java"


# instance fields
.field private final _authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 41
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    move-result-object v0

    .line 42
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->addNewCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    move-result-object v0

    .line 57
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->getCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    .line 58
    return-void
.end method


# virtual methods
.method public getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    .locals 7
    .param p1, "id"    # J

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->getCmAuthorArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    .local v3, "author":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 68
    return-object v3

    .line 66
    .end local v3    # "author":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCTCommentAuthorsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-object v0
.end method
