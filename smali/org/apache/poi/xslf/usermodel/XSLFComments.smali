.class public Lorg/apache/poi/xslf/usermodel/XSLFComments;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFComments.java"


# instance fields
.field private final _comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 41
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    move-result-object v0

    .line 42
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->addNewCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

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

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFComments;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    move-result-object v0

    .line 58
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    .line 59
    return-void
.end method


# virtual methods
.method public getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    return-object v0
.end method

.method public getCommentAt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    .locals 1
    .param p1, "pos"    # I

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfComments()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->sizeOfCmArray()I

    move-result v0

    return v0
.end method
