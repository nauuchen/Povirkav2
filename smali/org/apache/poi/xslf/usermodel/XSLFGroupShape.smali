.class public Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "XSLFGroupShape.java"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/GroupShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/GroupShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

.field private final _grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

.field private final _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 1
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 66
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 67
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    .line 68
    return-void
.end method

.method private getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    return-object v0
.end method

.method static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 5
    .param p0, "shapeId"    # I

    .line 200
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    .line 201
    .local v0, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;

    move-result-object v1

    .line 202
    .local v1, "nvSpPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 203
    .local v2, "cnv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v3, p0, 0x1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 206
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;

    .line 207
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 208
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    .line 209
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/Shape;

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Adding a shape from a different container is not supported - create it from scratch with XSLFGroupShape.create* methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 3

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
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

    .line 396
    .local v2, "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    goto :goto_0

    .line 398
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_0
    return-void
.end method

.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 11
    .param p1, "src"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 338
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    .line 341
    .local v0, "gr":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v1

    .line 342
    .local v1, "tgtShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v2

    .line 347
    .local v2, "srcShapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFShape;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 348
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 349
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 350
    .local v4, "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 352
    .local v5, "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {v5, v4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 348
    .end local v4    # "s1":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v5    # "s2":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto/16 :goto_3

    .line 356
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->clear()V

    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 361
    .local v4, "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    if-eqz v5, :cond_2

    .line 362
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v5

    .local v5, "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .line 363
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_2
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    if-eqz v5, :cond_3

    .line 364
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v5

    .restart local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .line 365
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_3
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    if-eqz v5, :cond_4

    .line 366
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v5

    .restart local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .line 367
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_4
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    if-eqz v5, :cond_5

    .line 368
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v5

    .restart local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .line 369
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_5
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    if-eqz v5, :cond_6

    .line 370
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 371
    .local v5, "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v6

    .line 372
    .local v6, "pd":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v7

    .line 373
    .local v7, "pdNew":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {p0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v5

    .line 374
    .end local v6    # "pd":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .end local v7    # "pdNew":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .local v5, "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_6
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    if-eqz v5, :cond_7

    .line 375
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v5

    .restart local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_2

    .line 376
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_7
    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    if-eqz v5, :cond_8

    .line 377
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v5

    .line 383
    .restart local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :goto_2
    invoke-virtual {v5, v4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 384
    .end local v4    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .end local v5    # "newShape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    goto :goto_1

    .line 379
    .restart local v4    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_8
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copying of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not supported."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 380
    goto/16 :goto_1

    .line 386
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_9
    :goto_3
    return-void
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    return-object v0
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    .line 222
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    .line 223
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 225
    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    return-object v0
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 2

    .line 246
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    .line 247
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 249
    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    return-object v0
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    .line 230
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    .line 231
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 233
    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    return-object v0
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    .line 254
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    .line 255
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 257
    return-object v0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/PictureData;

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 6
    .param p1, "pictureData"    # Lorg/apache/poi/sl/usermodel/PictureData;

    .line 262
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 265
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    .line 266
    .local v0, "xPictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 268
    .local v1, "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    .line 271
    .local v2, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v3

    .line 272
    .local v3, "sh":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    new-instance v4, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v4, v3}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize()V

    .line 273
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 275
    return-object v3

    .line 263
    .end local v0    # "xPictureData":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .end local v1    # "pic":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
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

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    return-object v0
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    .line 279
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 280
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 282
    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 4
    .param p1, "numRows"    # I
    .param p2, "numCols"    # I

    .line 287
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 290
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 291
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 293
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 294
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    move-result-object v2

    .line 295
    .local v2, "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 296
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    .end local v2    # "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "r":I
    :cond_1
    return-object v0

    .line 288
    .end local v0    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numRows and numCols must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    return-object v0
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    .line 238
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    .line 239
    .local v0, "sh":Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    .line 241
    return-object v0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 21

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 87
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 88
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    .line 89
    .local v2, "x":D
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v13

    .line 90
    .local v13, "y":D
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v15

    .line 91
    .local v15, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v16

    .line 92
    .local v16, "cx":D
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v18

    .line 93
    .local v18, "cy":D
    new-instance v20, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v4, v20

    move-wide v5, v2

    move-wide v7, v13

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v20
.end method

.method public getFlipHorizontal()Z
    .locals 2

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 316
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetFlipH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getFlipH()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFlipVertical()Z
    .locals 2

    .line 321
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 322
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetFlipV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getFlipV()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object v0
.end method

.method public getInteriorAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 21

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 120
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 121
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    .line 122
    .local v2, "x":D
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v13

    .line 123
    .local v13, "y":D
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v15

    .line 124
    .local v15, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v16

    .line 125
    .local v16, "cx":D
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v18

    .line 126
    .local v18, "cy":D
    new-instance v20, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v4, v20

    move-wide v5, v2

    move-wide v7, v13

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v20
.end method

.method public getRotation()D
    .locals 5

    .line 332
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 333
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetRot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getRot()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    :goto_1
    return-wide v1
.end method

.method protected getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 77
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
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

    .line 155
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    return-object v0
.end method

.method protected getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    return-object v0
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

    .line 165
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/sl/usermodel/Shape;

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v0

    return v0
.end method

.method public removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 5
    .param p1, "xShape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 174
    .local v0, "obj":Lorg/apache/xmlbeans/XmlObject;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 175
    .local v1, "grpSp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v2, :cond_2

    .line 180
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getCxnSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_3
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v2, :cond_5

    .line 184
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 185
    .local v2, "ps":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    .line 186
    .local v3, "sh":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    if-eqz v3, :cond_4

    .line 187
    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    .line 189
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "ps":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .end local v3    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    nop

    .line 193
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 191
    :cond_5
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

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 11
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 99
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 100
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    .line 101
    .local v2, "x":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    .line 102
    .local v4, "y":J
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 103
    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 104
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetExt()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    .line 105
    .local v6, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    .line 106
    .local v7, "cx":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    int-to-long v9, v9

    .line 107
    .local v9, "cy":J
    invoke-interface {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 108
    invoke-interface {v6, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 109
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .line 305
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipH(Z)V

    .line 306
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .line 310
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipV(Z)V

    .line 311
    return-void
.end method

.method public setInteriorAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 11
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 138
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetChOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 139
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    .line 140
    .local v2, "x":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    .line 141
    .local v4, "y":J
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 142
    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 143
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetChExt()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    .line 144
    .local v6, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    .line 145
    .local v7, "cx":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    int-to-long v9, v9

    .line 146
    .local v9, "cy":J
    invoke-interface {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 147
    invoke-interface {v6, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 148
    return-void
.end method

.method public setRotation(D)V
    .locals 3
    .param p1, "theta"    # D

    .line 327
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setRot(I)V

    .line 328
    return-void
.end method
