.class public Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
.super Ljava/lang/Object;
.source "XWPFFootnote.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;",
        "Lorg/apache/poi/xwpf/usermodel/IBody;"
    }
.end annotation


# instance fields
.field private bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field private ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

.field private paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .param p2, "body"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 53
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;)V
    .locals 1
    .param p1, "note"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .param p2, "xFootnotes"    # Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    .line 46
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 47
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 61
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 64
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 66
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_1

    .line 69
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 70
    .local v2, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    goto :goto_1

    .line 72
    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_2

    .line 73
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 74
    .local v2, "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    .end local v2    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_2
    :goto_1
    nop

    .line 77
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_2
    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 79
    return-void
.end method

.method private isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 3
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 228
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 229
    .local v0, "verify":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 230
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    if-ne v1, v2, :cond_0

    .line 231
    const/4 v1, 0x1

    return v1

    .line 233
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addNewParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3
    .param p1, "paragraph"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 346
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    .line 347
    .local v0, "newPara":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 348
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 349
    .local v1, "xPara":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-object v1
.end method

.method public addNewTbl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 3
    .param p1, "table"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 332
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    .line 333
    .local v0, "newTable":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 334
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 335
    .local v1, "xTable":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-object v1
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    return-object v0
.end method

.method public getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    return-object v0
.end method

.method public getOwner()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3
    .param p1, "p"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 171
    .local v1, "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    return-object v1

    .end local v1    # "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    goto :goto_0

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1
    .param p1, "pos"    # I

    .line 184
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 375
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 3
    .param p1, "ctTable"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 150
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 151
    .local v1, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v1, :cond_0

    .line 152
    return-object v2

    .line 153
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    return-object v1

    .end local v1    # "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_1
    goto :goto_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v2
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1
    .param p1, "pos"    # I

    .line 115
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 7
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 197
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 198
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 199
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 200
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 201
    return-object v3

    .line 203
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 204
    .local v2, "row":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 205
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 206
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 207
    instance-of v4, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v4, :cond_1

    .line 208
    return-object v3

    .line 210
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 211
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v5

    .line 212
    .local v5, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v5, :cond_2

    .line 213
    return-object v3

    .line 215
    :cond_2
    invoke-virtual {v5, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v6

    .line 216
    .local v6, "tableRow":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    if-nez v6, :cond_3

    .line 217
    return-object v3

    .line 219
    :cond_3
    invoke-virtual {v6, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v3

    return-object v3
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    return-object v0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "p"

    .line 292
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 294
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 295
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 296
    .local v3, "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    const/4 v4, 0x0

    .line 297
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 300
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 304
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 301
    .end local v5    # "pos":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    :goto_2
    const/4 v5, 0x0

    .line 307
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 308
    .local v6, "p2":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 309
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 310
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 311
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 312
    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_4

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_3

    .line 313
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 315
    :cond_5
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 316
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 317
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 318
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 319
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 320
    return-object v3

    .line 322
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v3    # "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "p2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 7
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 246
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, "tbl"

    .line 249
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 251
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 252
    .local v2, "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 253
    .local v3, "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->removeXmlContents()Z

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 258
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_1

    .line 259
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 261
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 262
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    .end local v5    # "pos":I
    :goto_1
    const/4 v5, 0x0

    .line 265
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    .line 266
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 267
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 268
    instance-of v6, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v6, :cond_3

    instance-of v6, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v6, :cond_2

    .line 269
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 271
    :cond_4
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 272
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 273
    .local v6, "c2":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 274
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 275
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 276
    return-object v3

    .line 278
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v3    # "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "c2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 132
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 133
    goto :goto_1

    .line 135
    :cond_0
    nop

    .end local v4    # "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    add-int/lit8 v0, v0, 0x1

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setCTFtnEdn(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 0
    .param p1, "footnote"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 106
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 107
    return-void
.end method
