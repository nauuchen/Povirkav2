.class public Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
.super Lorg/apache/poi/POIXMLDocument;
.source "XWPFDocument.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/Document;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field protected comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFComment;",
            ">;"
        }
    .end annotation
.end field

.field protected contentControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
            ">;"
        }
    .end annotation
.end field

.field private ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

.field private drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

.field protected endnotes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation
.end field

.field protected footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation
.end field

.field protected footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

.field private headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

.field protected headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field protected numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

.field protected packagePictures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field protected pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

.field protected tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 123
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    .line 102
    new-instance v0, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v1, 0x0

    const-wide v3, 0xffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->onDocumentCreate()V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    .line 102
    new-instance v0, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v1, 0x0

    const-wide v3, 0xffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    .line 119
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 5
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    .line 102
    new-instance v0, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v1, 0x0

    const-wide v3, 0xffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    .line 112
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    .line 113
    return-void
.end method

.method private getBodyElementSpecificPos(ILjava/util/List;)I
    .locals 5
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)I"
        }
    .end annotation

    .line 545
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/xwpf/usermodel/IBodyElement;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 546
    return v1

    .line 549
    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 551
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 552
    .local v0, "needle":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 554
    return v1

    .line 558
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 559
    .local v2, "startPos":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 560
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 561
    return v3

    .line 559
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 567
    .end local v0    # "needle":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    .end local v2    # "startPos":I
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method private getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I
    .locals 4
    .param p1, "needle"    # Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 728
    invoke-interface {p1}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    .line 730
    .local v0, "type":Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 731
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 732
    .local v2, "current":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 733
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    return v1

    .line 730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    .end local v1    # "i":I
    .end local v2    # "current":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I
    .locals 5
    .param p1, "relation"    # Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 784
    const/4 v0, 0x1

    .line 785
    .local v0, "i":I
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationParts()Ljava/util/List;

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

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 786
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_0
    goto :goto_0

    .line 790
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method private getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    .locals 2

    .line 495
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    .line 496
    .local v0, "ctBody":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private initFootnotes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 258
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    .line 259
    .local v2, "p":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "relation":Ljava/lang/String;
    sget-object v4, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    iput-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    .line 262
    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->onDocumentRead()V

    goto :goto_2

    .line 263
    :cond_0
    sget-object v4, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;

    move-result-object v4

    .line 266
    .local v4, "endnotesDocument":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->getEndnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->getEndnoteArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v5

    .local v5, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 267
    .local v8, "ctFtnEdn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    iget-object v9, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v11, p0, v8}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v8    # "ctFtnEdn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 270
    .end local v1    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v2    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v3    # "relation":Ljava/lang/String;
    .end local v4    # "endnotesDocument":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;
    .end local v5    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 271
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private initHyperlinks()V
    .locals 6

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 247
    .local v0, "relIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/openxml4j/opc/PackageRelationship;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 249
    .local v1, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    nop

    .end local v1    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    goto :goto_0

    .line 253
    .end local v0    # "relIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/openxml4j/opc/PackageRelationship;>;"
    :cond_0
    nop

    .line 254
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 3
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 720
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 721
    .local v0, "verify":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 722
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 723
    .local v1, "result":Z
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 724
    return v1
.end method

.method protected static newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 4

    .line 132
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 134
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 136
    .local v1, "corePartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 138
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 140
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v2

    const-string v3, "Apache POI"

    invoke-interface {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-object v0

    .line 143
    .end local v0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v1    # "corePartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 3
    .param p1, "note"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 870
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    .line 871
    .local v0, "endnote":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    return-object v0
.end method

.method public addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 1
    .param p1, "note"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 866
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    return-object v0
.end method

.method public addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 1399
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1400
    .local v0, "data":[B
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1401
    .end local v0    # "data":[B
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPictureData([BI)Ljava/lang/String;
    .locals 7
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 1355
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->findPackagePictureData([BI)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    .line 1356
    .local v0, "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p2

    .line 1358
    .local v1, "relDesc":Lorg/apache/poi/POIXMLRelation;
    if-nez v0, :cond_2

    .line 1360
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(I)I

    move-result v2

    .line 1361
    .local v2, "idx":I
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 1363
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 1364
    .local v3, "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v4, 0x0

    .line 1366
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v4, v5

    .line 1367
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1373
    :catch_0
    move-exception v5

    .line 1376
    goto :goto_1

    .line 1375
    :cond_0
    :goto_0
    nop

    .line 1378
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    .line 1379
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1371
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 1368
    :catch_1
    move-exception v5

    .line 1369
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lorg/apache/poi/POIXMLException;

    invoke-direct {v6, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v1    # "relDesc":Lorg/apache/poi/POIXMLRelation;
    .end local v2    # "idx":I
    .end local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local p1    # "pictureData":[B
    .end local p2    # "format":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1372
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v1    # "relDesc":Lorg/apache/poi/POIXMLRelation;
    .restart local v2    # "idx":I
    .restart local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local p1    # "pictureData":[B
    .restart local p2    # "format":I
    :goto_2
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1373
    :catch_2
    move-exception v6

    goto :goto_4

    .line 1375
    :cond_1
    :goto_3
    nop

    :goto_4
    throw v5

    .line 1382
    .end local v2    # "idx":I
    .end local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "out":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1389
    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 1390
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1393
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 769
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "document"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 771
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 772
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 773
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 774
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 775
    return-void
.end method

.method public createFooter(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 4
    .param p1, "type"    # Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    .line 474
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    .line 476
    .local v0, "hfPolicy":Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    .line 477
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    .line 478
    .local v1, "ctSectPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    .line 480
    .local v2, "titlePg":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 485
    .end local v1    # "ctSectPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    .end local v2    # "titlePg":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v1

    return-object v1
.end method

.method public createFootnotes()Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
    .locals 5

    .line 851
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    .line 852
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;

    move-result-object v0

    .line 854
    .local v0, "footnotesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 855
    .local v1, "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    .line 857
    .local v2, "i":I
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    .line 858
    .local v3, "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;->addNewFootnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->setFootnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;)V

    .line 859
    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    .line 862
    .end local v0    # "footnotesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;
    .end local v1    # "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v2    # "i":I
    .end local v3    # "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public createHeader(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 4
    .param p1, "type"    # Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    .line 452
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    .line 454
    .local v0, "hfPolicy":Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    .line 455
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    .line 456
    .local v1, "ctSectPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    .line 458
    .local v2, "titlePg":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 463
    .end local v1    # "ctSectPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    .end local v2    # "titlePg":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v1

    return-object v1
.end method

.method public createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object v0
.end method

.method public createNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 5

    .line 811
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    if-nez v0, :cond_0

    .line 812
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;

    move-result-object v0

    .line 814
    .local v0, "numberingDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 815
    .local v1, "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    .line 817
    .local v2, "i":I
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 818
    .local v3, "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->addNewNumbering()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->setNumbering(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;)V

    .line 819
    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 822
    .end local v0    # "numberingDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;
    .end local v1    # "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v2    # "i":I
    .end local v3    # "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 799
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 800
    .local v0, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    return-object v0
.end method

.method public createStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 5

    .line 831
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    if-nez v0, :cond_0

    .line 832
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v0

    .line 834
    .local v0, "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 835
    .local v1, "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    .line 837
    .local v2, "i":I
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 838
    .local v3, "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->addNewStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    .line 839
    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 842
    .end local v0    # "stylesDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    .end local v1    # "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v2    # "i":I
    .end local v3    # "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object v0
.end method

.method public createTOC()V
    .locals 12

    .line 953
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSdt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    move-result-object v0

    .line 954
    .local v0, "block":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TOC;

    invoke-direct {v1, v0}, Lorg/apache/poi/xwpf/usermodel/TOC;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    .line 955
    .local v1, "toc":Lorg/apache/poi/xwpf/usermodel/TOC;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 956
    .local v3, "par":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyle()Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "parStyle":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "Heading"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 960
    .local v5, "level":I
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    const-string v8, "112723803"

    invoke-virtual {v1, v5, v7, v6, v8}, Lorg/apache/poi/xwpf/usermodel/TOC;->addRow(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v5    # "level":I
    goto :goto_1

    .line 961
    :catch_0
    move-exception v5

    .line 962
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v8, 0x7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "can\'t format number in TOC heading"

    aput-object v11, v9, v10

    aput-object v5, v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 965
    .end local v3    # "par":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .end local v4    # "parStyle":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 966
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public createTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    .line 929
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 930
    .local v0, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I

    .line 943
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V

    .line 944
    .local v0, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    return-object v0
.end method

.method public enforceCommentsProtection()V
    .locals 2

    .line 1152
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 1153
    return-void
.end method

.method public enforceCommentsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 1172
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 1173
    return-void
.end method

.method public enforceFillingFormsProtection()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 1117
    return-void
.end method

.method public enforceFillingFormsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 1136
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 1137
    return-void
.end method

.method public enforceReadonlyProtection()V
    .locals 2

    .line 1080
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 1081
    return-void
.end method

.method public enforceReadonlyProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 1100
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 1101
    return-void
.end method

.method public enforceTrackedChangesProtection()V
    .locals 2

    .line 1188
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 1189
    return-void
.end method

.method public enforceTrackedChangesProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 1208
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 1209
    return-void
.end method

.method public enforceUpdateFields()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setUpdateFields()V

    .line 1244
    return-void
.end method

.method findPackagePictureData([BI)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 7
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I

    .line 1335
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    .line 1336
    .local v0, "checksum":J
    const/4 v2, 0x0

    .line 1341
    .local v2, "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1342
    .local v3, "xwpfPicDataList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    if-eqz v3, :cond_1

    .line 1343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1344
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 1345
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 1346
    .local v5, "curElem":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getData()[B

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1347
    move-object v2, v5

    .line 1349
    .end local v5    # "curElem":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :cond_0
    goto :goto_0

    .line 1351
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    :cond_1
    return-object v2
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 5
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

    .line 525
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 528
    .local v0, "embedds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 529
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 530
    .local v3, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 534
    .restart local v3    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_1
    return-object v0
.end method

.method public getAllPackagePictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1317
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1318
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1320
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 306
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyElementsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    .line 404
    .local v1, "comment":Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    return-object v1

    .end local v1    # "comment":Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    :cond_0
    goto :goto_0

    .line 408
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComments()[Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    return-object v0
.end method

.method public getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    return-object v0
.end method

.method getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    return-object v0
.end method

.method public getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 2
    .param p1, "id"    # I

    .line 387
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    return-object v0
.end method

.method public getFooterArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1
    .param p1, "pos"    # I

    .line 348
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFooterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 1
    .param p1, "id"    # I

    .line 382
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    return-object v0
.end method

.method public getFootnotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getFootnotesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1
    .param p1, "pos"    # I

    .line 362
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object v0
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlinkByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    .line 374
    .local v1, "link":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    return-object v1

    .end local v1    # "link":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    :cond_0
    goto :goto_0

    .line 378
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyperlinks()[Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    return-object v0
.end method

.method public getLastParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 919
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 920
    .local v0, "lastPos":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v1
.end method

.method public getNextPicNameNumber(I)I
    .locals 4
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getAllPackagePictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1415
    .local v0, "img":I
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "proposal":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    .line 1417
    .local v2, "createPartName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1418
    add-int/lit8 v0, v0, 0x1

    .line 1419
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    goto :goto_0

    .line 1422
    :cond_0
    return v0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 1

    .line 1446
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2
    .param p1, "p"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 1466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1467
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1468
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v1

    .line 1466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1
    .param p1, "pos"    # I

    .line 1506
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1507
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    .line 1509
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphPos(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 581
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result v0

    return v0
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

    .line 318
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParagraphsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 0

    .line 1521
    return-object p0
.end method

.method public getPartById(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 422
    .local v0, "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 423
    .end local v0    # "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 1533
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getPictureDataByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 2
    .param p1, "blipID"    # Ljava/lang/String;

    .line 1432
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    .line 1433
    .local v0, "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v1, :cond_0

    .line 1434
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 1435
    .local v1, "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    return-object v1

    .line 1437
    .end local v1    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPosOfParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)I
    .locals 1
    .param p1, "p"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 749
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result v0

    return v0
.end method

.method public getPosOfTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)I
    .locals 1
    .param p1, "t"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 760
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result v0

    return v0
.end method

.method public getStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 508
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelatedByType(Ljava/lang/String;)[Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .local v0, "parts":[Lorg/apache/poi/openxml4j/opc/PackagePart;
    nop

    .line 512
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 516
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v1

    .line 517
    .local v1, "sd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v2

    return-object v2

    .line 513
    .end local v1    # "sd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting one Styles document part, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    .end local v0    # "parts":[Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v1

    .line 510
    .restart local v0    # "parts":[Lorg/apache/poi/openxml4j/opc/PackagePart;
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 1

    .line 1455
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object v0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2
    .param p1, "ctTbl"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 1483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1484
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1485
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v1

    .line 1483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1488
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1
    .param p1, "pos"    # I

    .line 334
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0

    .line 337
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 7
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 1543
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 1544
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 1545
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 1546
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1547
    return-object v3

    .line 1549
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 1550
    .local v2, "row":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 1551
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 1552
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1553
    instance-of v4, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v4, :cond_1

    .line 1554
    return-object v3

    .line 1556
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 1557
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v5

    .line 1558
    .local v5, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v5, :cond_2

    .line 1559
    return-object v3

    .line 1561
    :cond_2
    invoke-virtual {v5, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v6

    .line 1562
    .local v6, "tableRow":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    if-nez v6, :cond_3

    .line 1563
    return-object v3

    .line 1565
    :cond_3
    invoke-virtual {v6, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v3

    return-object v3
.end method

.method public getTablePos(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 593
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result v0

    return v0
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

    .line 326
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTablesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTblStyle(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)Ljava/lang/String;
    .locals 1
    .param p1, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 369
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getStyleID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    .line 1570
    return-object p0
.end method

.method public getZoomPercent()J
    .locals 2

    .line 1271
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getZoomPercent()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 609
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "p"

    .line 619
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 622
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 623
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 624
    .local v3, "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    const/4 v4, 0x0

    .line 629
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 640
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 644
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 641
    .end local v5    # "pos":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 651
    :goto_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v5

    .line 657
    .local v5, "newParaPos":Lorg/apache/xmlbeans/XmlCursor;
    const/4 v6, 0x0

    .line 658
    .local v6, "i":I
    :try_start_0
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 659
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 660
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    move-object v4, v7

    .line 661
    nop

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_4

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_3

    .line 662
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 664
    :cond_5
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 665
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 666
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    nop

    .line 669
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v3

    .end local v6    # "i":I
    :catchall_0
    move-exception v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v6

    .line 672
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v3    # "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "newParaPos":Lorg/apache/xmlbeans/XmlCursor;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, "tbl"

    .line 680
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 682
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 683
    .local v2, "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 684
    .local v3, "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    const/4 v4, 0x0

    .line 685
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 686
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 688
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_1

    .line 689
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 691
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 692
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 694
    .end local v5    # "pos":I
    :goto_1
    const/4 v5, 0x0

    .line 695
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 697
    .local v6, "tableCursor":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 698
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 699
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    move-object v4, v7

    .line 700
    nop

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_3

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_2

    .line 701
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 703
    :cond_4
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 704
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 705
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    nop

    .line 708
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v3

    :catchall_0
    move-exception v7

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v7

    .line 711
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v3    # "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "tableCursor":Lorg/apache/xmlbeans/XmlCursor;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 1291
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1294
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 1295
    goto :goto_1

    .line 1297
    :cond_0
    nop

    .end local v4    # "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    add-int/lit8 v0, v0, 0x1

    .line 1293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1299
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1300
    return-void
.end method

.method public isEnforcedCommentsProtection()Z
    .locals 2

    .line 1043
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedFillingFormsProtection()Z
    .locals 2

    .line 1026
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedProtection()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith()Z

    move-result v0

    return v0
.end method

.method public isEnforcedReadonlyProtection()Z
    .locals 2

    .line 1009
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedTrackedChangesProtection()Z
    .locals 2

    .line 1060
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedUpdateFields()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isUpdateFields()Z

    move-result v0

    return v0
.end method

.method public isTrackRevisions()Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isTrackRevisions()Z

    move-result v0

    return v0
.end method

.method protected onDocumentCreate()V
    .locals 3

    .line 278
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    .line 279
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->addNewBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    .line 281
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 283
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    .line 284
    .local v0, "expProps":Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v1

    const-string v2, "Apache POI"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected onDocumentRead()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const-string v0, "./*"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;

    move-result-object v1

    .line 153
    .local v1, "doc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    .line 155
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initFootnotes()V

    .line 159
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    .line 160
    .local v2, "docCursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 161
    :goto_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 163
    .local v3, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    if-eqz v4, :cond_4

    .line 164
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 165
    .local v4, "bodyCursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v4, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 166
    :goto_1
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    .line 168
    .local v5, "bodyObj":Lorg/apache/xmlbeans/XmlObject;
    instance-of v6, v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v6, :cond_0

    .line 169
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v7, v5

    check-cast v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v6, v7, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 171
    .local v6, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    nop

    .end local v6    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    goto :goto_2

    :cond_0
    instance-of v6, v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v6, :cond_1

    .line 174
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v7, v5

    check-cast v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v6, v7, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 175
    .local v6, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    nop

    .end local v6    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    goto :goto_2

    :cond_1
    instance-of v6, v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v6, :cond_2

    .line 178
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v7, v5

    check-cast v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v6, v7, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 179
    .local v6, "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v5    # "bodyObj":Lorg/apache/xmlbeans/XmlObject;
    .end local v6    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_2
    :goto_2
    goto :goto_1

    .line 183
    :cond_3
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 185
    .end local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "bodyCursor":Lorg/apache/xmlbeans/XmlCursor;
    :cond_4
    goto :goto_0

    .line 186
    :cond_5
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 188
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 189
    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    .line 192
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 193
    .local v3, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    .line 194
    .local v4, "p":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "relation":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 196
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    iput-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 197
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->onDocumentRead()V

    goto/16 :goto_6

    .line 198
    :cond_7
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 199
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    iput-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 200
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->onDocumentRead()V

    goto/16 :goto_6

    .line 201
    :cond_8
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 202
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    .line 203
    .local v6, "footer":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->onDocumentRead()V

    .line 205
    .end local v6    # "footer":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    goto/16 :goto_6

    :cond_9
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 206
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 207
    .local v6, "header":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->onDocumentRead()V

    .line 209
    .end local v6    # "header":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    goto/16 :goto_6

    :cond_a
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 211
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v6, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;

    move-result-object v6

    .line 212
    .local v6, "cmntdoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->getCommentArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;

    move-result-object v7

    .local v7, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v8, :cond_b

    aget-object v10, v7, v9

    .line 213
    .local v10, "ctcomment":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
    iget-object v11, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    new-instance v12, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-direct {v12, v10, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    nop

    .end local v10    # "ctcomment":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 215
    .end local v6    # "cmntdoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;
    .end local v7    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_b
    goto :goto_6

    :cond_c
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 216
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 217
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->onDocumentRead()V

    goto :goto_6

    .line 218
    :cond_d
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 219
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 220
    .local v6, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->onDocumentRead()V

    .line 221
    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    .line 222
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    nop

    .end local v6    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    goto :goto_6

    :cond_e
    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 226
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/POIXMLDocumentPart;

    .line 231
    .local v7, "gp":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-static {v7}, Lorg/apache/poi/POIXMLDocumentPart;->_invokeOnDocumentRead(Lorg/apache/poi/POIXMLDocumentPart;)V

    .end local v7    # "gp":Lorg/apache/poi/POIXMLDocumentPart;
    goto :goto_5

    .line 234
    .end local v3    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v4    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v5    # "relation":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_6
    goto/16 :goto_3

    .line 235
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initHyperlinks()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "doc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;
    .end local v2    # "docCursor":Lorg/apache/xmlbeans/XmlCursor;
    nop

    .line 239
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V
    .locals 3
    .param p1, "picData"    # Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 1324
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1325
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;>;"
    if-nez v0, :cond_0

    .line 1326
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 1327
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1330
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_1
    return-void
.end method

.method public removeBodyElement(I)Z
    .locals 3
    .param p1, "pos"    # I

    .line 882
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 883
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    .line 884
    .local v0, "type":Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->TABLE:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_0

    .line 885
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTablePos(I)I

    move-result v1

    .line 886
    .local v1, "tablePos":I
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 887
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeTbl(I)V

    .line 889
    .end local v1    # "tablePos":I
    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_1

    .line 890
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphPos(I)I

    move-result v1

    .line 891
    .local v1, "paraPos":I
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 892
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeP(I)V

    .line 894
    .end local v1    # "paraPos":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 895
    const/4 v1, 0x1

    return v1

    .line 897
    .end local v0    # "type":Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeProtectionEnforcement()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->removeEnforcement()V

    .line 1228
    return-void
.end method

.method public setParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
    .locals 2
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .param p2, "pos"    # I

    .line 907
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    .line 913
    return-void
.end method

.method public setTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 975
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setTblArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    .line 977
    return-void
.end method

.method public setTrackRevisions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1261
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setTrackRevisions(Z)V

    .line 1262
    return-void
.end method

.method public setZoomPercent(J)V
    .locals 1
    .param p1, "zoomPercent"    # J

    .line 1280
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setZoomPercent(J)V

    .line 1281
    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->validateProtectionPassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
