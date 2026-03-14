.class public final Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFDrawing.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocumentPart;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field protected static final NAMESPACE_A:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field protected static final NAMESPACE_C:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"


# instance fields
.field private drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

.field private numOfGraphicFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    nop

    .line 80
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    .line 98
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    .line 111
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 113
    .local v0, "options":Lorg/apache/xmlbeans/XmlOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 114
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 116
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 119
    nop

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method private addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    .locals 9
    .param p1, "cur"    # Lorg/apache/xmlbeans/XmlCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlCursor;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p2, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 582
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 584
    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 587
    .local v0, "obj":Lorg/apache/xmlbeans/XmlObject;
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v1, :cond_2

    .line 589
    goto/16 :goto_5

    .line 590
    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    if-eqz v1, :cond_3

    .line 591
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    goto :goto_1

    .line 592
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    if-eqz v1, :cond_4

    .line 593
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    .restart local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    goto :goto_1

    .line 594
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-eqz v1, :cond_6

    .line 595
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .restart local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :goto_0
    goto :goto_1

    .line 598
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    if-eqz v1, :cond_7

    .line 599
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    .restart local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    goto :goto_1

    .line 600
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :cond_7
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    if-eqz v1, :cond_8

    .line 601
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    .line 634
    .restart local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :goto_1
    nop

    .line 635
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 636
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 602
    .end local v1    # "shape":Lorg/apache/poi/xssf/usermodel/XSSFShape;
    :cond_8
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v1, :cond_c

    .line 603
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "trying to parse AlternateContent, this unlinks the returned Shapes from the underlying xml content, so those shapes can\'t be used to modify the drawing, i.e. modifications will be ignored!"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 609
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 610
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    const/4 v1, 0x0

    .line 615
    .local v1, "cur2":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-static {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v3

    .line 616
    .local v3, "alterWS":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    move-object v1, v6

    .line 617
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 618
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .end local v3    # "alterWS":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    :cond_9
    if-eqz v1, :cond_a

    .line 624
    :try_start_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 626
    :cond_a
    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 627
    goto :goto_3

    .line 623
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 620
    :catch_0
    move-exception v3

    .line 621
    .local v3, "e":Lorg/apache/xmlbeans/XmlException;
    :try_start_3
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "unable to parse CTDrawing in alternate content."

    aput-object v8, v7, v5

    aput-object v3, v7, v2

    invoke-virtual {v6, v4, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    .end local v3    # "e":Lorg/apache/xmlbeans/XmlException;
    if-eqz v1, :cond_a

    .line 624
    :try_start_4
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_2

    .line 628
    :goto_3
    goto :goto_5

    .line 623
    :goto_4
    if-eqz v1, :cond_b

    .line 624
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 626
    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    .end local p1    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .end local p2    # "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    throw v2

    .line 638
    .end local v0    # "obj":Lorg/apache/xmlbeans/XmlObject;
    .end local v1    # "cur2":Lorg/apache/xmlbeans/XmlCursor;
    .restart local p1    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .restart local p2    # "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    :cond_c
    :goto_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    :cond_d
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    .line 641
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_0

    .line 643
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 644
    nop

    .line 645
    return-void

    .line 643
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0
.end method

.method private createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    .locals 7
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 372
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    .line 373
    .local v0, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v1

    .line 374
    .local v1, "ctGraphicFrame":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 375
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 377
    iget-wide v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    .line 378
    .local v2, "frameId":J
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    invoke-direct {v4, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    .line 379
    .local v4, "graphicFrame":Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    invoke-virtual {v4, p1}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)V

    .line 380
    invoke-virtual {v4, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setId(J)V

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diagramm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setName(Ljava/lang/String;)V

    .line 382
    return-object v4
.end method

.method private createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    .locals 4
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 500
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->addNewTwoCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    .line 501
    .local v0, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    .line 502
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    .line 503
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;

    .line 504
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    .line 505
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    .line 507
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing$1;->$SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object v1, v3

    .line 511
    .local v1, "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ONE_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    .line 507
    .end local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    :cond_0
    move-object v1, v3

    .line 510
    .restart local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ONE_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    .line 507
    .end local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    :cond_1
    move-object v1, v3

    .line 509
    .restart local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->TWO_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    .line 508
    .end local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    :cond_2
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ABSOLUTE:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    .line 513
    .restart local v1    # "aditAs":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setEditAs(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;)V

    .line 514
    return-object v0
.end method

.method private createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 16
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 518
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 519
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 520
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    .line 523
    .local v2, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    const-wide/16 v3, 0x0

    .line 524
    .local v3, "widthPx":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v5

    .local v5, "col":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v6

    if-ge v5, v6, :cond_0

    .line 525
    invoke-virtual {v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidthInPixels(I)F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v3, v6

    .line 524
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 527
    .end local v5    # "col":I
    :cond_0
    const-wide/16 v5, 0x0

    .line 528
    .local v5, "heightPx":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v7

    .local v7, "row":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 529
    invoke-static {v2, v7}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v8

    add-double/2addr v5, v8

    .line 528
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 531
    .end local v7    # "row":I
    :cond_1
    double-to-int v7, v3

    invoke-static {v7}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result v7

    int-to-long v7, v7

    .line 532
    .local v7, "width":J
    double-to-int v9, v5

    invoke-static {v9}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result v9

    int-to-long v9, v9

    .line 533
    .local v9, "height":J
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v11

    .line 534
    .local v11, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v7, v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-interface {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v9, v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-interface {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 538
    return-object v0
.end method

.method private getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 8
    .param p1, "obj"    # Lorg/apache/xmlbeans/XmlObject;

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "anchor":Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    const/4 v1, 0x0

    .line 669
    .local v1, "parentXbean":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    .line 670
    .local v2, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 673
    :cond_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 674
    if-eqz v1, :cond_4

    .line 675
    instance-of v3, v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    if-eqz v3, :cond_1

    .line 676
    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    .line 677
    .local v3, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    move-object v0, v4

    .line 678
    .end local v3    # "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    goto :goto_0

    :cond_1
    instance-of v3, v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    if-eqz v3, :cond_3

    .line 679
    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    .line 680
    .local v3, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v6

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    move-object v0, v4

    .line 681
    .end local v3    # "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
    :cond_2
    goto :goto_0

    :cond_3
    instance-of v3, v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    if-eqz v3, :cond_2

    .line 682
    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    .line 683
    .local v3, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v6

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    move-object v0, v4

    .line 686
    .end local v3    # "ct":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
    :cond_4
    :goto_0
    return-object v0
.end method

.method private hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 5
    .param p1, "shape"    # Lorg/apache/xmlbeans/XmlObject;

    .line 648
    new-instance v0, Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    const-string/jumbo v2, "uri"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .local v0, "uriName":Ljavax/xml/namespace/QName;
    const-string v1, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:extLst/a:ext"

    .line 650
    .local v1, "xquery":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    .line 651
    .local v2, "cur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 653
    :goto_0
    :try_start_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "uri":Ljava/lang/String;
    const-string/jumbo v4, "{63B3BB69-23CF-44E3-9099-C40C66FF867C}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 656
    const/4 v4, 0x1

    .line 660
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return v4

    .line 658
    .end local v3    # "uri":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 661
    nop

    .line 662
    const/4 v3, 0x0

    return v3

    .line 660
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v3
.end method

.method private static newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 1

    .line 128
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    return-object v0
.end method

.method private newShapeId()J
    .locals 2

    .line 542
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfAbsoluteAnchorArray()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfOneCellAnchorArray()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfTwoCellAnchorArray()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 5
    .param p1, "pictureIndex"    # I

    .line 255
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 256
    .local v0, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 257
    .local v1, "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 258
    .local v2, "pic":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v3

    .line 259
    .local v3, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    return-object v4
.end method

.method protected commit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 151
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wsDr"

    const-string/jumbo v4, "xdr"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 155
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 156
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 157
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 158
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 159
    return-void
.end method

.method public bridge synthetic createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .line 79
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 10
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # I
    .param p6, "row1"    # I
    .param p7, "col2"    # I
    .param p8, "row2"    # I

    .line 164
    new-instance v9, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public bridge synthetic createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 12
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 334
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 335
    .local v0, "ca":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    .line 338
    .local v1, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v3

    .line 339
    .local v3, "comments":Lorg/apache/poi/xssf/model/CommentsTable;
    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v2

    .line 340
    .local v2, "vml":Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newCommentShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v4

    .line 341
    .local v4, "vmlShape":Lcom/microsoft/schemas/vml/CTShape;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->isSet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    .line 345
    .local v5, "dx1Pixels":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v6

    div-int/lit16 v6, v6, 0x2535

    .line 346
    .local v6, "dy1Pixels":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v7

    div-int/lit16 v7, v7, 0x2535

    .line 347
    .local v7, "dx2Pixels":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v8

    div-int/lit16 v8, v8, 0x2535

    .line 348
    .local v8, "dy2Pixels":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "position":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v11

    invoke-interface {v11, v10, v9}, Lcom/microsoft/schemas/office/excel/CTClientData;->setAnchorArray(ILjava/lang/String;)V

    .line 355
    .end local v5    # "dx1Pixels":I
    .end local v6    # "dy1Pixels":I
    .end local v7    # "dx2Pixels":I
    .end local v8    # "dy2Pixels":I
    .end local v9    # "position":Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 357
    .local v5, "ref":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {v3, v5}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v6

    if-nez v6, :cond_1

    .line 361
    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {v3, v5}, Lorg/apache/poi/xssf/model/CommentsTable;->newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v7

    invoke-direct {v6, v3, v7, v4}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    return-object v6

    .line 358
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple cell comments in one cell are not allowed, cell: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Chart;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object v0

    return-object v0
.end method

.method public createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 244
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object v0

    return-object v0
.end method

.method public createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 7
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 227
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 230
    .local v0, "chartNumber":I
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    .line 232
    .local v1, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 233
    .local v2, "chart":Lorg/apache/poi/xssf/usermodel/XSSFChart;
    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "chartRelId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-result-object v4

    .line 236
    .local v4, "frame":Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    invoke-virtual {v4, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setChart(Lorg/apache/poi/xssf/usermodel/XSSFChart;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getCTGraphicalObjectFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 239
    return-object v2
.end method

.method public createConnector(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 293
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    .line 294
    .local v0, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v1

    .line 295
    .local v1, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 297
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    .line 298
    .local v2, "shape":Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    iput-object p1, v2, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 299
    return-object v2
.end method

.method public createGroup(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 5
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 312
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    .line 313
    .local v0, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v1

    .line 314
    .local v1, "ctGroup":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 315
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    .line 316
    .local v2, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v3

    .line 317
    .local v3, "grpXfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setOff(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    .line 318
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    .line 319
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setChExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    .line 321
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    invoke-direct {v4, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    .line 322
    .local v4, "shape":Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    iput-object p1, v4, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 323
    return-object v4
.end method

.method public bridge synthetic createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-result-object v0

    return-object v0
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
    .locals 29
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "storageId"    # I
    .param p3, "pictureIndex"    # I

    .line 387
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    .line 388
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 403
    .local v3, "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    .line 404
    .local v4, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v5

    .line 405
    .local v5, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    invoke-virtual {v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v6

    .line 406
    .local v6, "sheetIndex":I
    add-int/lit8 v0, v6, 0x1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v7, v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 411
    .local v7, "shapeId":J
    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/xl/embeddings/oleObject"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v10, p2

    :try_start_1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ".bin"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    .local v0, "olePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    nop

    .line 415
    sget-object v9, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v3, v0, v9, v11}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v9

    .line 418
    .local v9, "olePR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v11

    move/from16 v12, p3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 419
    .local v11, "imgPD":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v13

    .line 420
    .local v13, "imgPN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    sget-object v14, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v15, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    invoke-virtual {v3, v13, v14, v15}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v14

    .line 421
    .local v14, "imgSheetPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    move-object/from16 v16, v0

    .end local v0    # "olePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .local v16, "olePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    move-object/from16 v17, v3

    .end local v3    # "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .local v17, "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v0, v13, v3, v15}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 425
    .local v0, "imgDrawPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v3

    .line 426
    .local v3, "cwb":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v15

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v15

    .line 428
    .local v15, "oo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
    :goto_0
    move-object/from16 v18, v2

    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .local v18, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-interface {v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->addNewOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v2

    .line 429
    .local v2, "ole1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    move-object/from16 v19, v3

    .end local v3    # "cwb":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .local v19, "cwb":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    const-string v3, "Package"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setProgId(Ljava/lang/String;)V

    .line 430
    invoke-interface {v2, v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setShapeId(J)V

    .line 431
    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setId(Ljava/lang/String;)V

    .line 433
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 434
    .local v3, "cur1":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 435
    move-object/from16 v20, v2

    .end local v2    # "ole1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .local v20, "ole1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    const-string v2, "objectPr"

    move-object/from16 v21, v4

    .end local v4    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .local v21, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    const-string v4, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-interface {v3, v2, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v14}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v5

    .end local v5    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .local v22, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    const-string v5, "id"

    move/from16 v23, v6

    .end local v6    # "sheetIndex":I
    .local v23, "sheetIndex":I
    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    invoke-interface {v3, v5, v6, v2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "defaultSize"

    const-string v5, "0"

    invoke-interface {v3, v2, v5}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "anchor"

    invoke-interface {v3, v2, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "moveWithCells"

    const-string v5, "1"

    invoke-interface {v3, v2, v5}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    .line 443
    .local v2, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v5

    .line 444
    .local v5, "cur2":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v5, v3}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 445
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 447
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 448
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    .line 449
    new-instance v6, Ljavax/xml/namespace/QName;

    move-object/from16 v24, v5

    .end local v5    # "cur2":Lorg/apache/xmlbeans/XmlCursor;
    .local v24, "cur2":Lorg/apache/xmlbeans/XmlCursor;
    const-string v5, "from"

    invoke-direct {v6, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lorg/apache/xmlbeans/XmlCursor;->setName(Ljavax/xml/namespace/QName;)V

    .line 450
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    .line 451
    new-instance v5, Ljavax/xml/namespace/QName;

    const-string/jumbo v6, "to"

    invoke-direct {v5, v4, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/apache/xmlbeans/XmlCursor;->setName(Ljavax/xml/namespace/QName;)V

    .line 453
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 456
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v4

    .line 457
    .local v4, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 458
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v5

    move-object/from16 v6, p1

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {v1, v6}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 461
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v5

    .line 462
    .local v5, "blipFill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v6

    move-object/from16 v25, v2

    .end local v2    # "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    .local v25, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 463
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 465
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 466
    .local v2, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    invoke-interface {v2, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v0

    .end local v0    # "imgDrawPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .local v26, "imgDrawPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    const-string v0, "Object "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 469
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 470
    .local v0, "extCur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    .line 471
    new-instance v6, Ljavax/xml/namespace/QName;

    move-object/from16 v27, v2

    .end local v2    # "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .local v27, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-string v2, "spid"

    invoke-direct {v6, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v3

    .end local v3    # "cur1":Lorg/apache/xmlbeans/XmlCursor;
    .local v28, "cur1":Lorg/apache/xmlbeans/XmlCursor;
    const-string v3, "_x0000_s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lorg/apache/xmlbeans/XmlCursor;->setAttributeText(Ljavax/xml/namespace/QName;Ljava/lang/String;)Z

    .line 472
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 474
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-direct {v2, v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 475
    .local v2, "shape":Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
    move-object/from16 v3, p1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    iput-object v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 477
    return-object v2

    .line 412
    .end local v0    # "extCur":Lorg/apache/xmlbeans/XmlCursor;
    .end local v9    # "olePR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v11    # "imgPD":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .end local v13    # "imgPN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v14    # "imgSheetPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v15    # "oo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
    .end local v16    # "olePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v17    # "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v18    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v19    # "cwb":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .end local v20    # "ole1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .end local v21    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v22    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v23    # "sheetIndex":I
    .end local v24    # "cur2":Lorg/apache/xmlbeans/XmlCursor;
    .end local v25    # "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    .end local v26    # "imgDrawPR":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v27    # "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v28    # "cur1":Lorg/apache/xmlbeans/XmlCursor;
    .local v2, "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .local v3, "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .local v4, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .local v5, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v6    # "sheetIndex":I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v10, p2

    :goto_1
    move/from16 v12, p3

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    .end local v2    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v3    # "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v5    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v6    # "sheetIndex":I
    .restart local v17    # "sheetPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v18    # "sh":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .restart local v21    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .restart local v22    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v23    # "sheetIndex":I
    move-object v2, v9

    .line 413
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .local v2, "olePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "x1"    # I

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 216
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 8
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 197
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 199
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v1

    .line 200
    .local v1, "shapeId":J
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v3

    .line 201
    .local v3, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v4

    .line 202
    .local v4, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 204
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 206
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-direct {v5, p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    .line 207
    .local v5, "shape":Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    iput-object p1, v5, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 208
    invoke-virtual {v5, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    .line 209
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v6

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 211
    return-object v5
.end method

.method public createSimpleShape(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    .locals 6
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 272
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    .line 273
    .local v0, "shapeId":J
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    .line 274
    .local v2, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    .line 275
    .local v3, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 276
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 277
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 278
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 279
    .local v4, "shape":Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    iput-object p1, v4, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 280
    return-object v4
.end method

.method public createTextbox(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    .locals 5
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 175
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    .line 176
    .local v0, "shapeId":J
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    .line 177
    .local v2, "ctAnchor":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    .line 178
    .local v3, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 179
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 180
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 181
    .local v4, "shape":Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    iput-object p1, v4, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 182
    return-object v4
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-object v0
.end method

.method public getCharts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFChart;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, "charts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFChart;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getRelations()Ljava/util/List;

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

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart;

    .line 487
    .local v2, "part":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v3, :cond_0

    .line 488
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    goto :goto_0

    .line 491
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 555
    .local v1, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 560
    nop

    .line 561
    return-object v0

    .line 559
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v2
.end method

.method public getShapes(Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;)Ljava/util/List;
    .locals 3
    .param p1, "groupshape"    # Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getCTGroupShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 571
    .local v1, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 574
    nop

    .line 575
    return-object v0

    .line 573
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v2
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
