.class public final Lorg/apache/poi/xslf/usermodel/XSLFNotes;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "XSLFNotes.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Notes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Notes<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 44
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    .line 45
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    .line 46
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

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;

    move-result-object v0

    .line 63
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->getNotes()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    .line 64
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    .line 65
    return-void
.end method

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 2

    .line 68
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    .line 69
    .local v0, "ctNotes":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    .line 70
    .local v1, "cSld":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 72
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getRelations()Ljava/util/List;

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

    .line 93
    .local v1, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object v2

    .end local v1    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    goto :goto_0

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootElementName()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "notes"

    return-object v0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "tp":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;>;>;"
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 104
    .local v2, "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v3, v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 106
    .local v3, "txt":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v2    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v3    # "txt":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    :cond_0
    goto :goto_0

    .line 109
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    return-object v0
.end method
