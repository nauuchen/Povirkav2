.class public Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "XSLFNotesMaster.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

.field private _theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 58
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    .line 59
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    move-result-object v0

    .line 68
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    .line 69
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    .line 70
    return-void
.end method

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 4

    .line 73
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const-string v1, "notesMaster.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    move-result-object v1

    .line 81
    .local v1, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .local v2, "slide":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    nop

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    .end local v1    # "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;
    .end local v2    # "slide":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Can\'t initialize NotesMaster"

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Missing resource \'notesMaster.xml\'"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootElementName()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "notesMaster"

    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 4

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    .line 110
    .local v1, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v2, :cond_0

    .line 111
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 112
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v2

    .line 113
    .local v2, "cmap":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
    if-eqz v2, :cond_1

    .line 114
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->initColorMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V

    goto :goto_1

    .end local v1    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v2    # "cmap":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
    :cond_0
    goto :goto_0

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    return-object v0
.end method
