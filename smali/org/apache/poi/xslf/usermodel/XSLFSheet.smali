.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFSheet.java"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocumentPart;",
        "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

.field private _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

.field private _placeholderByIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholderByTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextShape;",
            ">;"
        }
    .end annotation
.end field

.field private _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation
.end field

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 90
    return-void
.end method

.method protected static buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;
    .locals 9
    .param p0, "spTree"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .param p1, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 111
    .local v1, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    .local v2, "b":Z
    :goto_0
    if-eqz v2, :cond_7

    .line 112
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 113
    .local v3, "ch":Lorg/apache/xmlbeans/XmlObject;
    instance-of v4, v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v4, :cond_0

    .line 115
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-static {v4, p1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v4

    .line 116
    .local v4, "shape":Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v4    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    goto/16 :goto_2

    :cond_0
    instance-of v4, v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v4, :cond_1

    .line 118
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-direct {v4, v5, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_1
    instance-of v4, v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v4, :cond_2

    .line 120
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    invoke-direct {v4, v5, p1}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 121
    :cond_2
    instance-of v4, v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v4, :cond_3

    .line 122
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-object v5, v3

    check-cast v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-direct {v4, v5, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_3
    instance-of v4, v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v4, :cond_4

    .line 124
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-static {v4, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    move-result-object v4

    .line 125
    .local v4, "shape":Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    nop

    .end local v4    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
    goto :goto_2

    :cond_4
    instance-of v4, v3, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v4, :cond_6

    .line 131
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 132
    const-string v4, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string v5, "Choice"

    invoke-interface {v1, v4, v5}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 134
    :try_start_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-static {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape$Factory;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v4

    .line 135
    .local v4, "grp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    invoke-static {v4, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v4    # "grp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    goto :goto_1

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Lorg/apache/xmlbeans/XmlException;
    :try_start_2
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unparsable alternate content"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 140
    .end local v4    # "e":Lorg/apache/xmlbeans/XmlException;
    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    .line 111
    .end local v3    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :cond_6
    :goto_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto/16 :goto_0

    .line 144
    .end local v2    # "b":Z
    :cond_7
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 145
    nop

    .line 147
    return-object v0

    .line 144
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v2
.end method

.method private getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
    .locals 1

    .line 177
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    .line 178
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    return-object v0
.end method

.method private initDrawingAndShapes()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    .line 200
    .local v0, "cgs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    if-nez v1, :cond_1

    .line 204
    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    .line 206
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/Shape;

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Adding a shape from a different container is not supported - create it from scratch witht XSLFSheet.create* methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 8
    .param p1, "src"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 423
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    .line 424
    .local v0, "spTree":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 426
    .local v1, "numShapes":I
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    .line 427
    .local v2, "srcTree":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    const-string v3, "*"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 428
    .local v6, "ch":Lorg/apache/xmlbeans/XmlObject;
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v7, :cond_0

    .line 429
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    .line 430
    :cond_0
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v7, :cond_1

    .line 431
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    .line 432
    :cond_1
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v7, :cond_2

    .line 433
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    .line 434
    :cond_2
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v7, :cond_3

    .line 435
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    .line 436
    :cond_3
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v7, :cond_4

    .line 437
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 427
    .end local v6    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 441
    .end local v3    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    .line 442
    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 443
    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    .line 444
    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 445
    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    .line 448
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v3

    .line 449
    .local v3, "tgtShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v4

    .line 450
    .local v4, "srcShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 451
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 452
    .local v6, "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    add-int v7, v1, v5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 454
    .local v7, "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {v7, v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 450
    .end local v6    # "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v7    # "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 456
    .end local v5    # "i":I
    :cond_6
    return-object p0
.end method

.method protected canDraw(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 3

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 349
    .local v2, "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    goto :goto_0

    .line 351
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_0
    return-void
.end method

.method protected final commit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 371
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "docName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 373
    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v2, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 378
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 379
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lorg/apache/xmlbeans/XmlObject;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 380
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 381
    return-void
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    return-object v0
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    .line 212
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    .line 213
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 215
    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    return-object v0
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 2

    .line 236
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    .line 237
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 239
    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    return-object v0
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    .line 220
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    .line 221
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 223
    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    return-object v0
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    .line 244
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    .line 245
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 247
    return-object v0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/PictureData;

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 5
    .param p1, "pictureData"    # Lorg/apache/poi/sl/usermodel/PictureData;

    .line 252
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 255
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    .line 256
    .local v0, "xPictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 258
    .local v1, "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v4, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 260
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v3

    .line 261
    .local v3, "sh":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    new-instance v4, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v4, v3}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize()V

    .line 262
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 264
    return-object v3

    .line 253
    .end local v0    # "xPictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .end local v1    # "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v3    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pictureData needs to be of type XSLFPictureData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    return-object v0
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    .line 268
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 269
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 271
    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 4
    .param p1, "numRows"    # I
    .param p2, "numCols"    # I

    .line 276
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 279
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 280
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 282
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 283
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    move-result-object v2

    .line 284
    .local v2, "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 285
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v2    # "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "r":I
    :cond_1
    return-object v0

    .line 277
    .end local v0    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numRows and numCols must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    return-object v0
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    .line 228
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    .line 229
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 231
    return-object v0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 2
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 583
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    .line 584
    .local v0, "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object v1

    .line 585
    .local v1, "draw":Lorg/apache/poi/sl/draw/Drawable;
    invoke-interface {v1, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    .line 586
    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 1

    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommonSlideData()Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    return-object v0
.end method

.method public getFollowMasterGraphics()Z
    .locals 1

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 3
    .param p1, "ph"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "shape":Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    .line 487
    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    .line 490
    :cond_1
    return-object v0
.end method

.method public getPlaceholder(I)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 1
    .param p1, "idx"    # I

    .line 534
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    .line 535
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object v0
.end method

.method getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 2
    .param p1, "id"    # I

    .line 519
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    .line 520
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object v0
.end method

.method getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 2
    .param p1, "ordinal"    # I

    .line 524
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    .line 525
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object v0
.end method

.method public getPlaceholders()[Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 2

    .line 543
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    .line 544
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object v0
.end method

.method protected abstract getRootElementName()Ljava/lang/String;
.end method

.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    .line 189
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    return-object v0
.end method

.method public getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .locals 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    .line 98
    .local v0, "p":Lorg/apache/poi/POIXMLDocumentPart;
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    if-eqz v1, :cond_0

    .line 100
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-object v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SlideShow was not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 4

    .line 356
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 358
    .local v0, "root":Lorg/apache/xmlbeans/XmlObject;
    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:spTree"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 360
    .local v1, "sp":[Lorg/apache/xmlbeans/XmlObject;
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 363
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    goto :goto_0

    .line 361
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CTGroupShape was not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    .end local v0    # "root":Lorg/apache/xmlbeans/XmlObject;
    .end local v1    # "sp":[Lorg/apache/xmlbeans/XmlObject;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    return-object v0
.end method

.method protected getTextShapeByType(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 4
    .param p1, "type"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 470
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 471
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_0

    .line 472
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 473
    .local v2, "txt":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 474
    return-object v2

    .line 476
    .end local v1    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v2    # "txt":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    :cond_0
    goto :goto_0

    .line 478
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getXmlObject()Lorg/apache/xmlbeans/XmlObject;
.end method

.method importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;
    .locals 8
    .param p1, "blipId"    # Ljava/lang/String;
    .param p2, "packagePart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 596
    invoke-virtual {p2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 599
    .local v0, "blipRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .local v1, "blipPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    nop

    .line 603
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 605
    .local v2, "data":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v3

    .line 606
    .local v3, "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v4

    .line 607
    .local v4, "pictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 609
    .local v5, "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    sget-object v6, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v7, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v6

    .line 611
    .local v6, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 600
    .end local v1    # "blipPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "data":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .end local v3    # "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .end local v4    # "pictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .end local v5    # "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v6    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 601
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .local v2, "blipPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 5
    .param p1, "src"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    .line 393
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 394
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    .line 395
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 396
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    .line 402
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 405
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "tgtShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, "srcShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 408
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 409
    .local v3, "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 411
    .local v4, "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {v4, v3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 407
    .end local v3    # "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v4    # "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_0
    return-object p0
.end method

.method importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 6
    .param p1, "srcRel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .param p2, "srcPafrt"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 618
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 619
    .local v0, "destPP":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 621
    .local v1, "srcPPName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    .line 622
    .local v2, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    return-object v3

    .line 627
    :cond_0
    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 629
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 631
    .local v3, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 632
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 633
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5, v4}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 634
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 635
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    nop

    .line 639
    return-object v3

    .line 636
    :catch_0
    move-exception v4

    .line 637
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/poi/POIXMLException;

    invoke-direct {v5, v4}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method initPlaceholders()V
    .locals 7

    .line 494
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    if-nez v0, :cond_2

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    .line 499
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

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

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 500
    .local v1, "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_1

    .line 501
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 502
    .local v2, "sShape":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v3

    .line 503
    .local v3, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-eqz v3, :cond_1

    .line 504
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v4

    long-to-int v5, v4

    .line 507
    .local v5, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .end local v5    # "idx":I
    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .end local v1    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v2    # "sShape":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .end local v3    # "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    :cond_1
    goto :goto_0

    .line 516
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V
    .locals 1
    .param p1, "pictureShape"    # Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 648
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    .line 649
    .local v0, "pd":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 650
    return-void
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/Shape;

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v0

    return v0
.end method

.method public removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 5
    .param p1, "xShape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 321
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 322
    .local v0, "obj":Lorg/apache/xmlbeans/XmlObject;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    .line 323
    .local v1, "spTree":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v2, :cond_1

    .line 326
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_1
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v2, :cond_2

    .line 328
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getCxnSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_2
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v2, :cond_3

    .line 330
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_3
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v2, :cond_4

    .line 332
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 333
    .local v2, "ps":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    .line 334
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    .end local v2    # "ps":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    nop

    .line 338
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 336
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported shape: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
    .locals 1
    .param p1, "data"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    .line 174
    :goto_0
    return-void
.end method
