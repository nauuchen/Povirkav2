.class public Lorg/apache/poi/sl/draw/DrawSimpleShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "DrawSimpleShape.java"


# static fields
.field private static final DECO_SIZE_POW:D = 1.5


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    .line 65
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    .line 66
    return-void
.end method

.method protected static getCustomGeometry(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getCustomGeometry(Ljava/lang/String;Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v0

    return-object v0
.end method

.method protected static getCustomGeometry(Ljava/lang/String;Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 345
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 349
    .local v0, "presets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/sl/draw/geom/CustomGeometry;>;"
    :goto_0
    if-nez v0, :cond_3

    .line 350
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 351
    if-eqz p1, :cond_1

    .line 352
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 355
    :cond_1
    const-string v1, "org.apache.poi.sl.draw.binding"

    .line 356
    .local v1, "packageName":Ljava/lang/String;
    const-class v2, Lorg/apache/poi/sl/draw/Drawable;

    const-string v3, "presetShapeDefinitions.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 359
    .local v2, "presetIS":Ljava/io/InputStream;
    new-instance v3, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;

    invoke-direct {v3}, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;-><init>()V

    .line 367
    .local v3, "startElementFilter":Ljavax/xml/stream/EventFilter;
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/StaxHelper;->newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v4

    .line 368
    .local v4, "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    invoke-virtual {v4, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v5

    .line 369
    .local v5, "staxReader":Ljavax/xml/stream/XMLEventReader;
    invoke-virtual {v4, v5, v3}, Ljavax/xml/stream/XMLInputFactory;->createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v6

    .line 371
    .local v6, "staxFiltRd":Ljavax/xml/stream/XMLEventReader;
    invoke-interface {v6}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    .line 373
    invoke-static {v1}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v7

    .line 374
    .local v7, "jaxbContext":Ljavax/xml/bind/JAXBContext;
    invoke-virtual {v7}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v8

    .line 376
    .local v8, "unmarshaller":Ljavax/xml/bind/Unmarshaller;
    :goto_1
    invoke-interface {v6}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 377
    invoke-interface {v6}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v9

    check-cast v9, Ljavax/xml/stream/events/StartElement;

    .line 378
    .local v9, "evRoot":Ljavax/xml/stream/events/StartElement;
    invoke-interface {v9}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    .line 380
    .local v10, "cusName":Ljava/lang/String;
    const-class v11, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-interface {v8, v5, v11}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/stream/XMLEventReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v11

    .line 381
    .local v11, "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    invoke-virtual {v11}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    .line 383
    .local v12, "cusGeom":Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
    new-instance v13, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v13, v12}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    nop

    .end local v9    # "evRoot":Ljavax/xml/stream/events/StartElement;
    .end local v10    # "cusName":Ljava/lang/String;
    .end local v11    # "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    .end local v12    # "cusGeom":Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
    goto :goto_1

    .line 386
    :cond_2
    invoke-interface {v6}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 387
    invoke-interface {v5}, Ljavax/xml/stream/XMLEventReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v4    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    .end local v5    # "staxReader":Ljavax/xml/stream/XMLEventReader;
    .end local v6    # "staxFiltRd":Ljavax/xml/stream/XMLEventReader;
    .end local v7    # "jaxbContext":Ljavax/xml/bind/JAXBContext;
    .end local v8    # "unmarshaller":Ljavax/xml/bind/Unmarshaller;
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 392
    goto :goto_3

    .line 391
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 388
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to load preset geometries."

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "presets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/sl/draw/geom/CustomGeometry;>;"
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "presetIS":Ljava/io/InputStream;
    .end local v3    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "graphics":Ljava/awt/Graphics2D;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "presets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/sl/draw/geom/CustomGeometry;>;"
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "presetIS":Ljava/io/InputStream;
    .restart local v3    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "graphics":Ljava/awt/Graphics2D;
    :goto_2
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 395
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "presetIS":Ljava/io/InputStream;
    .end local v3    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    :cond_3
    :goto_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    return-object v1
.end method


# virtual methods
.method protected computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;
    .locals 30
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    .line 401
    .local v0, "sh":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/sl/draw/geom/Outline;>;"
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v2

    .line 403
    .local v2, "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    if-nez v2, :cond_0

    .line 404
    return-object v1

    .line 407
    :cond_0
    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    .line 408
    .local v4, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/geom/Path;

    .line 410
    .local v6, "p":Lorg/apache/poi/sl/draw/geom/Path;
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Path;->getW()J

    move-result-wide v7

    long-to-double v7, v7

    .local v7, "w":D
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Path;->getH()J

    move-result-wide v9

    long-to-double v9, v9

    .local v9, "h":D
    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v11

    .local v11, "scaleX":D
    move-wide v13, v11

    .line 411
    .local v13, "scaleY":D
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v17, v7, v15

    if-nez v17, :cond_1

    .line 412
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v15

    int-to-double v7, v15

    goto :goto_1

    .line 414
    :cond_1
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v15

    div-double v11, v15, v7

    .line 416
    :goto_1
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v17, v9, v15

    if-nez v17, :cond_2

    .line 417
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v15

    int-to-double v9, v15

    goto :goto_2

    .line 419
    :cond_2
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v15

    div-double v13, v15, v9

    .line 424
    :goto_2
    new-instance v15, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    invoke-direct/range {v21 .. v29}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 426
    .local v15, "pathAnchor":Ljava/awt/geom/Rectangle2D;
    new-instance v3, Lorg/apache/poi/sl/draw/geom/Context;

    invoke-direct {v3, v2, v15, v0}, Lorg/apache/poi/sl/draw/geom/Context;-><init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V

    .line 428
    .local v3, "ctx":Lorg/apache/poi/sl/draw/geom/Context;
    move-object/from16 v16, v0

    .end local v0    # "sh":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    .local v16, "sh":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    invoke-virtual {v6, v3}, Lorg/apache/poi/sl/draw/geom/Path;->getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;

    move-result-object v0

    .line 431
    .local v0, "gp":Ljava/awt/Shape;
    new-instance v17, Ljava/awt/geom/AffineTransform;

    invoke-direct/range {v17 .. v17}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object/from16 v18, v17

    .line 432
    .local v18, "at":Ljava/awt/geom/AffineTransform;
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .end local v2    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .end local v3    # "ctx":Lorg/apache/poi/sl/draw/geom/Context;
    .local v17, "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .local v19, "ctx":Lorg/apache/poi/sl/draw/geom/Context;
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    move-wide/from16 v20, v7

    .end local v7    # "w":D
    .local v20, "w":D
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    move-object/from16 v22, v4

    move-object/from16 v4, v18

    .end local v18    # "at":Ljava/awt/geom/AffineTransform;
    .local v4, "at":Ljava/awt/geom/AffineTransform;
    .local v22, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v4, v2, v3, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 433
    invoke-virtual {v4, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 435
    invoke-virtual {v4, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v2

    .line 437
    .local v2, "canvasShape":Ljava/awt/Shape;
    new-instance v3, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v3, v2, v6}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v0    # "gp":Ljava/awt/Shape;
    .end local v2    # "canvasShape":Ljava/awt/Shape;
    .end local v4    # "at":Ljava/awt/geom/AffineTransform;
    .end local v6    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v9    # "h":D
    .end local v11    # "scaleX":D
    .end local v13    # "scaleY":D
    .end local v15    # "pathAnchor":Ljava/awt/geom/Rectangle2D;
    .end local v19    # "ctx":Lorg/apache/poi/sl/draw/geom/Context;
    .end local v20    # "w":D
    move-object/from16 v3, p1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v22

    goto/16 :goto_0

    .line 440
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v16    # "sh":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    .end local v17    # "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .end local v22    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v0, "sh":Lorg/apache/poi/sl/usermodel/SimpleShape;, "Lorg/apache/poi/sl/usermodel/SimpleShape<**>;"
    .local v2, "geom":Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .local v4, "anchor":Ljava/awt/geom/Rectangle2D;
    :cond_3
    return-object v1
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 10
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 70
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    .line 71
    .local v0, "drawPaint":Lorg/apache/poi/sl/draw/DrawPaint;
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v1

    .line 72
    .local v1, "fill":Ljava/awt/Paint;
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v2

    .line 73
    .local v2, "line":Ljava/awt/Paint;
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getStroke()Ljava/awt/BasicStroke;

    move-result-object v3

    .line 74
    .local v3, "stroke":Ljava/awt/BasicStroke;
    invoke-virtual {p1, v3}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;

    move-result-object v4

    .line 79
    .local v4, "elems":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/sl/draw/geom/Outline;>;"
    invoke-virtual {p0, p1, v4, v1, v2}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V

    .line 82
    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/geom/Outline;

    .line 84
    .local v6, "o":Lorg/apache/poi/sl/draw/geom/Outline;
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/sl/draw/geom/Path;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v8

    invoke-virtual {v0, p1, v7, v8}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object v7

    .line 86
    .local v7, "fillMod":Ljava/awt/Paint;
    if-eqz v7, :cond_0

    .line 87
    invoke-virtual {p1, v7}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 88
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v8

    .line 89
    .local v8, "s":Ljava/awt/Shape;
    sget-object v9, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v9, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p1, v8}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 92
    .end local v6    # "o":Lorg/apache/poi/sl/draw/geom/Outline;
    .end local v7    # "fillMod":Ljava/awt/Paint;
    .end local v8    # "s":Ljava/awt/Shape;
    :cond_0
    goto :goto_0

    .line 97
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawContent(Ljava/awt/Graphics2D;)V

    .line 100
    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 102
    invoke-virtual {p1, v3}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 103
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/geom/Outline;

    .line 104
    .restart local v6    # "o":Lorg/apache/poi/sl/draw/geom/Outline;
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v7

    .line 106
    .local v7, "s":Ljava/awt/Shape;
    sget-object v8, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v8, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1, v7}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 108
    .end local v6    # "o":Lorg/apache/poi/sl/draw/geom/Outline;
    .end local v7    # "s":Ljava/awt/Shape;
    :cond_2
    goto :goto_1

    .line 113
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawDecoration(Ljava/awt/Graphics2D;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V

    .line 114
    return-void
.end method

.method protected drawDecoration(Ljava/awt/Graphics2D;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V
    .locals 9
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "line"    # Ljava/awt/Paint;
    .param p3, "stroke"    # Ljava/awt/BasicStroke;

    .line 117
    if-nez p2, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/sl/draw/geom/Outline;>;"
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;

    move-result-object v1

    .line 124
    .local v1, "deco":Lorg/apache/poi/sl/usermodel/LineDecoration;
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object v2

    .line 125
    .local v2, "head":Lorg/apache/poi/sl/draw/geom/Outline;
    if-eqz v2, :cond_1

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object v3

    .line 129
    .local v3, "tail":Lorg/apache/poi/sl/draw/geom/Outline;
    if-eqz v3, :cond_2

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/Outline;

    .line 135
    .local v5, "o":Lorg/apache/poi/sl/draw/geom/Outline;
    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v6

    .line 136
    .local v6, "s":Ljava/awt/Shape;
    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v7

    .line 137
    .local v7, "p":Lorg/apache/poi/sl/draw/geom/Path;
    sget-object v8, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v8, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    invoke-virtual {p1, v6}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 142
    :cond_3
    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 143
    invoke-virtual {p1, v6}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 145
    .end local v5    # "o":Lorg/apache/poi/sl/draw/geom/Outline;
    .end local v6    # "s":Ljava/awt/Shape;
    .end local v7    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    :cond_4
    goto :goto_0

    .line 146
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method protected drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V
    .locals 19
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p3, "fill"    # Ljava/awt/Paint;
    .param p4, "line"    # Ljava/awt/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;",
            "Ljava/awt/Paint;",
            "Ljava/awt/Paint;",
            ")V"
        }
    .end annotation

    .line 304
    .local p2, "outlines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/sl/draw/geom/Outline;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getShadow()Lorg/apache/poi/sl/usermodel/Shadow;

    move-result-object v1

    .line 305
    .local v1, "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    if-eqz v1, :cond_5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    move-object/from16 v16, v1

    goto/16 :goto_2

    .line 309
    :cond_0
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v2

    .line 310
    .local v2, "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v3

    .line 312
    .local v3, "shadowColor":Ljava/awt/Color;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getRotation()D

    move-result-wide v4

    .line 313
    .local v4, "shapeRotation":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFlipVertical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v4, v6

    .line 316
    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getAngle()D

    move-result-wide v6

    sub-double/2addr v6, v4

    .line 317
    .local v6, "angle":D
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getDistance()D

    move-result-wide v8

    .line 318
    .local v8, "dist":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    .line 319
    .local v10, "dx":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v8

    .line 321
    .local v12, "dy":D
    invoke-virtual {v0, v10, v11, v12, v13}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 323
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/sl/draw/geom/Outline;

    .line 324
    .local v15, "o":Lorg/apache/poi/sl/draw/geom/Outline;
    move-object/from16 v16, v1

    .end local v1    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .local v16, "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v1

    .line 325
    .local v1, "s":Ljava/awt/Shape;
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v17

    .line 326
    .local v17, "p":Lorg/apache/poi/sl/draw/geom/Path;
    move-object/from16 v18, v2

    .end local v2    # "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .local v18, "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v2, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 329
    if-eqz p3, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    goto :goto_1

    .line 331
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 334
    .end local v1    # "s":Ljava/awt/Shape;
    .end local v15    # "o":Lorg/apache/poi/sl/draw/geom/Outline;
    .end local v17    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    :cond_3
    :goto_1
    move-object/from16 v1, v16

    move-object/from16 v2, v18

    goto :goto_0

    .line 323
    .end local v16    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .end local v18    # "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .local v1, "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .restart local v2    # "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    :cond_4
    move-object/from16 v16, v1

    .line 336
    .end local v1    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    neg-double v1, v10

    neg-double v14, v12

    invoke-virtual {v0, v1, v2, v14, v15}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 337
    return-void

    .line 305
    .end local v2    # "shadowPaint":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .end local v3    # "shadowColor":Ljava/awt/Color;
    .end local v4    # "shapeRotation":D
    .end local v6    # "angle":D
    .end local v8    # "dist":D
    .end local v10    # "dx":D
    .end local v12    # "dy":D
    .end local v16    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .restart local v1    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    :cond_5
    move-object/from16 v16, v1

    .line 306
    .end local v1    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    .restart local v16    # "shadow":Lorg/apache/poi/sl/usermodel/Shadow;, "Lorg/apache/poi/sl/usermodel/Shadow<**>;"
    :goto_2
    return-void
.end method

.method protected getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 39
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "deco"    # Lorg/apache/poi/sl/usermodel/LineDecoration;
    .param p3, "stroke"    # Ljava/awt/BasicStroke;

    .line 223
    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 226
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 227
    .local v1, "headLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-nez v1, :cond_1

    .line 228
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 230
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    .line 231
    .local v2, "headWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-nez v2, :cond_2

    .line 232
    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 235
    :cond_2
    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    invoke-virtual/range {p3 .. p3}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 237
    .local v3, "lineWidth":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    .line 238
    .local v5, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    .local v7, "x1":D
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v9

    .line 240
    .local v9, "y1":D
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v11

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 242
    .local v11, "alpha":D
    new-instance v13, Ljava/awt/geom/AffineTransform;

    invoke-direct {v13}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v14, v13

    .line 243
    .local v14, "at":Ljava/awt/geom/AffineTransform;
    const/4 v13, 0x0

    .line 244
    .local v13, "headShape":Ljava/awt/Shape;
    const/4 v15, 0x0

    .line 246
    .local v15, "p":Lorg/apache/poi/sl/draw/geom/Path;
    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v0

    move-object/from16 v20, v5

    .end local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v20, "anchor":Ljava/awt/geom/Rectangle2D;
    int-to-double v5, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v5, v5, v16

    move-wide/from16 v21, v11

    .end local v11    # "alpha":D
    .local v21, "alpha":D
    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 247
    .local v5, "scaleY":D
    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v0

    move-object/from16 v23, v1

    .end local v1    # "headLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .local v23, "headLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    int-to-double v0, v0

    add-double v0, v0, v16

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 248
    .local v0, "scaleX":D
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v11

    .line 250
    .local v11, "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    if-nez v11, :cond_3

    .line 251
    const/4 v12, 0x0

    return-object v12

    .line 254
    :cond_3
    sget-object v12, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v11}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v16

    aget v12, v12, v16

    move-object/from16 v24, v2

    .end local v2    # "headWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .local v24, "headWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    const/4 v2, 0x1

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-eq v12, v2, :cond_6

    const/4 v2, 0x2

    move-wide/from16 v25, v7

    .end local v7    # "x1":D
    .local v25, "x1":D
    if-eq v12, v2, :cond_5

    const/4 v2, 0x3

    if-eq v12, v2, :cond_5

    const/4 v2, 0x4

    if-eq v12, v2, :cond_4

    const/4 v2, 0x0

    move-object v7, v2

    move-wide/from16 v27, v3

    move-object/from16 v18, v7

    move-object/from16 v29, v11

    move-object v2, v14

    move-wide/from16 v11, v21

    move-wide/from16 v7, v25

    move-wide/from16 v25, v0

    .local v7, "bounds":Ljava/awt/geom/Rectangle2D;
    goto/16 :goto_0

    .end local v7    # "bounds":Ljava/awt/geom/Rectangle2D;
    :cond_4
    const/4 v2, 0x0

    move-object v12, v2

    .local v12, "arrow":Ljava/awt/geom/Path2D$Double;
    move-object/from16 v18, v2

    .line 274
    .local v18, "bounds":Ljava/awt/geom/Rectangle2D;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    move-object v15, v2

    .line 275
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 276
    .local v2, "triangle":Ljava/awt/geom/Path2D$Double;
    mul-double v7, v3, v0

    move-object/from16 v29, v11

    move-object/from16 v19, v12

    .end local v11    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .end local v12    # "arrow":Ljava/awt/geom/Path2D$Double;
    .local v19, "arrow":Ljava/awt/geom/Path2D$Double;
    .local v29, "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    neg-double v11, v3

    mul-double v11, v11, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 277
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 278
    mul-double v7, v3, v0

    mul-double v11, v3, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 279
    invoke-virtual {v2}, Ljava/awt/geom/Path2D$Double;->closePath()V

    .line 280
    move-object v13, v2

    .line 281
    move-wide/from16 v7, v25

    .end local v25    # "x1":D
    .local v7, "x1":D
    invoke-virtual {v14, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 282
    move-wide/from16 v11, v21

    .end local v21    # "alpha":D
    .local v11, "alpha":D
    invoke-virtual {v14, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 283
    move-wide/from16 v25, v0

    move-wide/from16 v27, v3

    move-object v2, v14

    goto/16 :goto_0

    .line 254
    .end local v2    # "triangle":Ljava/awt/geom/Path2D$Double;
    .end local v7    # "x1":D
    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v19    # "arrow":Ljava/awt/geom/Path2D$Double;
    .end local v29    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v11, "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .restart local v21    # "alpha":D
    .restart local v25    # "x1":D
    :cond_5
    move-object/from16 v29, v11

    move-wide/from16 v11, v21

    move-wide/from16 v7, v25

    .end local v21    # "alpha":D
    .end local v25    # "x1":D
    .restart local v7    # "x1":D
    .local v11, "alpha":D
    .restart local v29    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 264
    .local v19, "bounds":Ljava/awt/geom/Rectangle2D;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    move-object/from16 v21, v13

    .end local v13    # "headShape":Ljava/awt/Shape;
    .local v21, "headShape":Ljava/awt/Shape;
    const/4 v13, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x1

    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v22, "p":Lorg/apache/poi/sl/draw/geom/Path;
    invoke-direct {v2, v13, v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    move-object v15, v2

    .line 265
    .end local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 266
    .local v2, "arrow":Ljava/awt/geom/Path2D$Double;
    move-wide/from16 v25, v11

    .end local v11    # "alpha":D
    .local v25, "alpha":D
    mul-double v11, v3, v0

    move-wide/from16 v30, v7

    .end local v7    # "x1":D
    .local v30, "x1":D
    neg-double v7, v3

    mul-double v7, v7, v5

    div-double v7, v7, v16

    invoke-virtual {v2, v11, v12, v7, v8}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 267
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 268
    mul-double v7, v3, v0

    mul-double v11, v3, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 269
    move-object v13, v2

    .line 270
    .end local v21    # "headShape":Ljava/awt/Shape;
    .restart local v13    # "headShape":Ljava/awt/Shape;
    move-wide/from16 v7, v30

    .end local v30    # "x1":D
    .restart local v7    # "x1":D
    invoke-virtual {v14, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 271
    move-wide/from16 v11, v25

    .end local v25    # "alpha":D
    .restart local v11    # "alpha":D
    invoke-virtual {v14, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 272
    move-wide/from16 v25, v0

    move-wide/from16 v27, v3

    move-object v2, v14

    move-object/from16 v18, v19

    goto :goto_0

    .line 256
    .end local v2    # "arrow":Ljava/awt/geom/Path2D$Double;
    .end local v19    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v29    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v11, "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v21, "alpha":D
    :cond_6
    move-object/from16 v29, v11

    move-wide/from16 v11, v21

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    .end local v13    # "headShape":Ljava/awt/Shape;
    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v11, "alpha":D
    .local v21, "headShape":Ljava/awt/Shape;
    .restart local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v29    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    .line 257
    .end local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v2, "p":Lorg/apache/poi/sl/draw/geom/Path;
    new-instance v13, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    mul-double v35, v3, v0

    mul-double v37, v3, v5

    move-object/from16 v30, v13

    invoke-direct/range {v30 .. v38}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    move-object/from16 v21, v13

    .line 258
    invoke-interface/range {v21 .. v21}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v22

    .line 259
    .local v22, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v18

    div-double v18, v18, v16

    move-wide/from16 v25, v0

    .end local v0    # "scaleX":D
    .local v25, "scaleX":D
    sub-double v0, v7, v18

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v18

    div-double v18, v18, v16

    move-wide/from16 v27, v3

    move-object v4, v2

    .end local v2    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v3    # "lineWidth":D
    .local v4, "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v27, "lineWidth":D
    sub-double v2, v9, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 260
    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    div-double v2, v2, v16

    add-double/2addr v0, v2

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v18

    div-double v18, v18, v16

    add-double v18, v2, v18

    move-object v13, v14

    move-object v2, v14

    .end local v14    # "at":Ljava/awt/geom/AffineTransform;
    .local v2, "at":Ljava/awt/geom/AffineTransform;
    move-wide v14, v11

    move-wide/from16 v16, v0

    invoke-virtual/range {v13 .. v19}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 261
    move-object v15, v4

    move-object/from16 v13, v21

    move-object/from16 v18, v22

    .line 288
    .end local v4    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v21    # "headShape":Ljava/awt/Shape;
    .end local v22    # "bounds":Ljava/awt/geom/Rectangle2D;
    .restart local v13    # "headShape":Ljava/awt/Shape;
    .restart local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    :goto_0
    if-eqz v13, :cond_7

    .line 289
    invoke-virtual {v2, v13}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v13

    .line 291
    :cond_7
    if-nez v13, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v0, v13, v15}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    :goto_1
    return-object v0

    .line 224
    .end local v2    # "at":Ljava/awt/geom/AffineTransform;
    .end local v5    # "scaleY":D
    .end local v7    # "x1":D
    .end local v9    # "y1":D
    .end local v11    # "alpha":D
    .end local v13    # "headShape":Ljava/awt/Shape;
    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v20    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v23    # "headLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v24    # "headWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v25    # "scaleX":D
    .end local v27    # "lineWidth":D
    .end local v29    # "headShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    :cond_9
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    return-object v0
.end method

.method protected getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawSimpleShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    return-object v0
.end method

.method public getStroke()Ljava/awt/BasicStroke;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;

    move-result-object v0

    return-object v0
.end method

.method protected getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 39
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "deco"    # Lorg/apache/poi/sl/usermodel/LineDecoration;
    .param p3, "stroke"    # Ljava/awt/BasicStroke;

    .line 149
    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 152
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    .line 153
    .local v1, "tailLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-nez v1, :cond_1

    .line 154
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 156
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    .line 157
    .local v2, "tailWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    if-nez v2, :cond_2

    .line 158
    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 161
    :cond_2
    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    invoke-virtual/range {p3 .. p3}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 163
    .local v3, "lineWidth":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    .line 164
    .local v5, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 165
    .local v7, "x2":D
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v9

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 167
    .local v9, "y2":D
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v11

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 169
    .local v11, "alpha":D
    new-instance v13, Ljava/awt/geom/AffineTransform;

    invoke-direct {v13}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v14, v13

    .line 170
    .local v14, "at":Ljava/awt/geom/AffineTransform;
    const/4 v13, 0x0

    .line 171
    .local v13, "tailShape":Ljava/awt/Shape;
    const/4 v15, 0x0

    .line 173
    .local v15, "p":Lorg/apache/poi/sl/draw/geom/Path;
    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v0

    move-object/from16 v20, v5

    .end local v5    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v20, "anchor":Ljava/awt/geom/Rectangle2D;
    int-to-double v5, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v5, v5, v16

    move-wide/from16 v21, v11

    .end local v11    # "alpha":D
    .local v21, "alpha":D
    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 174
    .local v5, "scaleY":D
    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v0

    move-object/from16 v23, v1

    .end local v1    # "tailLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .local v23, "tailLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    int-to-double v0, v0

    add-double v0, v0, v16

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 176
    .local v0, "scaleX":D
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v11

    .line 178
    .local v11, "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    if-nez v11, :cond_3

    .line 179
    const/4 v12, 0x0

    return-object v12

    .line 182
    :cond_3
    sget-object v12, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v11}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v16

    aget v12, v12, v16

    move-object/from16 v24, v2

    .end local v2    # "tailWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .local v24, "tailWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    const/4 v2, 0x1

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-eq v12, v2, :cond_6

    const/4 v2, 0x2

    move-wide/from16 v25, v7

    .end local v7    # "x2":D
    .local v25, "x2":D
    if-eq v12, v2, :cond_5

    const/4 v2, 0x3

    if-eq v12, v2, :cond_5

    const/4 v2, 0x4

    if-eq v12, v2, :cond_4

    const/4 v2, 0x0

    move-object v7, v2

    move-wide/from16 v27, v3

    move-object/from16 v18, v7

    move-object/from16 v29, v11

    move-object v2, v14

    move-wide/from16 v11, v21

    move-wide/from16 v7, v25

    move-wide/from16 v25, v0

    .local v7, "bounds":Ljava/awt/geom/Rectangle2D;
    goto/16 :goto_0

    .end local v7    # "bounds":Ljava/awt/geom/Rectangle2D;
    :cond_4
    const/4 v2, 0x0

    move-object v12, v2

    .local v12, "arrow":Ljava/awt/geom/Path2D$Double;
    move-object/from16 v18, v2

    .line 202
    .local v18, "bounds":Ljava/awt/geom/Rectangle2D;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    move-object v15, v2

    .line 203
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 204
    .local v2, "triangle":Ljava/awt/geom/Path2D$Double;
    neg-double v7, v3

    mul-double v7, v7, v0

    move-object/from16 v29, v11

    move-object/from16 v19, v12

    .end local v11    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .end local v12    # "arrow":Ljava/awt/geom/Path2D$Double;
    .local v19, "arrow":Ljava/awt/geom/Path2D$Double;
    .local v29, "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    neg-double v11, v3

    mul-double v11, v11, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 205
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 206
    neg-double v7, v3

    mul-double v7, v7, v0

    mul-double v11, v3, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 207
    invoke-virtual {v2}, Ljava/awt/geom/Path2D$Double;->closePath()V

    .line 208
    move-object v13, v2

    .line 209
    move-wide/from16 v7, v25

    .end local v25    # "x2":D
    .local v7, "x2":D
    invoke-virtual {v14, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 210
    move-wide/from16 v11, v21

    .end local v21    # "alpha":D
    .local v11, "alpha":D
    invoke-virtual {v14, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 211
    move-wide/from16 v25, v0

    move-wide/from16 v27, v3

    move-object v2, v14

    goto/16 :goto_0

    .line 182
    .end local v2    # "triangle":Ljava/awt/geom/Path2D$Double;
    .end local v7    # "x2":D
    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v19    # "arrow":Ljava/awt/geom/Path2D$Double;
    .end local v29    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v11, "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .restart local v21    # "alpha":D
    .restart local v25    # "x2":D
    :cond_5
    move-object/from16 v29, v11

    move-wide/from16 v11, v21

    move-wide/from16 v7, v25

    .end local v21    # "alpha":D
    .end local v25    # "x2":D
    .restart local v7    # "x2":D
    .local v11, "alpha":D
    .restart local v29    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 192
    .local v19, "bounds":Ljava/awt/geom/Rectangle2D;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    move-object/from16 v21, v13

    .end local v13    # "tailShape":Ljava/awt/Shape;
    .local v21, "tailShape":Ljava/awt/Shape;
    const/4 v13, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x1

    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v22, "p":Lorg/apache/poi/sl/draw/geom/Path;
    invoke-direct {v2, v13, v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    move-object v15, v2

    .line 193
    .end local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 194
    .local v2, "arrow":Ljava/awt/geom/Path2D$Double;
    move-wide/from16 v25, v11

    .end local v11    # "alpha":D
    .local v25, "alpha":D
    neg-double v11, v3

    mul-double v11, v11, v0

    move-wide/from16 v30, v7

    .end local v7    # "x2":D
    .local v30, "x2":D
    neg-double v7, v3

    mul-double v7, v7, v5

    div-double v7, v7, v16

    invoke-virtual {v2, v11, v12, v7, v8}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 195
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 196
    neg-double v7, v3

    mul-double v7, v7, v0

    mul-double v11, v3, v5

    div-double v11, v11, v16

    invoke-virtual {v2, v7, v8, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 197
    move-object v13, v2

    .line 198
    .end local v21    # "tailShape":Ljava/awt/Shape;
    .restart local v13    # "tailShape":Ljava/awt/Shape;
    move-wide/from16 v7, v30

    .end local v30    # "x2":D
    .restart local v7    # "x2":D
    invoke-virtual {v14, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 199
    move-wide/from16 v11, v25

    .end local v25    # "alpha":D
    .restart local v11    # "alpha":D
    invoke-virtual {v14, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 200
    move-wide/from16 v25, v0

    move-wide/from16 v27, v3

    move-object v2, v14

    move-object/from16 v18, v19

    goto :goto_0

    .line 184
    .end local v2    # "arrow":Ljava/awt/geom/Path2D$Double;
    .end local v19    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v29    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v11, "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .local v21, "alpha":D
    :cond_6
    move-object/from16 v29, v11

    move-wide/from16 v11, v21

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    .end local v13    # "tailShape":Ljava/awt/Shape;
    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v11, "alpha":D
    .local v21, "tailShape":Ljava/awt/Shape;
    .restart local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v29    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    new-instance v2, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    .line 185
    .end local v22    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v2, "p":Lorg/apache/poi/sl/draw/geom/Path;
    new-instance v13, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    mul-double v35, v3, v0

    mul-double v37, v3, v5

    move-object/from16 v30, v13

    invoke-direct/range {v30 .. v38}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    move-object/from16 v21, v13

    .line 186
    invoke-interface/range {v21 .. v21}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v22

    .line 187
    .local v22, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v18

    div-double v18, v18, v16

    move-wide/from16 v25, v0

    .end local v0    # "scaleX":D
    .local v25, "scaleX":D
    sub-double v0, v7, v18

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v18

    div-double v18, v18, v16

    move-wide/from16 v27, v3

    move-object v4, v2

    .end local v2    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v3    # "lineWidth":D
    .local v4, "p":Lorg/apache/poi/sl/draw/geom/Path;
    .local v27, "lineWidth":D
    sub-double v2, v9, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 188
    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    div-double v2, v2, v16

    add-double/2addr v0, v2

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual/range {v22 .. v22}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v18

    div-double v18, v18, v16

    add-double v18, v2, v18

    move-object v13, v14

    move-object v2, v14

    .end local v14    # "at":Ljava/awt/geom/AffineTransform;
    .local v2, "at":Ljava/awt/geom/AffineTransform;
    move-wide v14, v11

    move-wide/from16 v16, v0

    invoke-virtual/range {v13 .. v19}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 189
    move-object v15, v4

    move-object/from16 v13, v21

    move-object/from16 v18, v22

    .line 216
    .end local v4    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v21    # "tailShape":Ljava/awt/Shape;
    .end local v22    # "bounds":Ljava/awt/geom/Rectangle2D;
    .restart local v13    # "tailShape":Ljava/awt/Shape;
    .restart local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .restart local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    :goto_0
    if-eqz v13, :cond_7

    .line 217
    invoke-virtual {v2, v13}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v13

    .line 219
    :cond_7
    if-nez v13, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v0, v13, v15}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    :goto_1
    return-object v0

    .line 150
    .end local v2    # "at":Ljava/awt/geom/AffineTransform;
    .end local v5    # "scaleY":D
    .end local v7    # "x2":D
    .end local v9    # "y2":D
    .end local v11    # "alpha":D
    .end local v13    # "tailShape":Ljava/awt/Shape;
    .end local v15    # "p":Lorg/apache/poi/sl/draw/geom/Path;
    .end local v18    # "bounds":Ljava/awt/geom/Rectangle2D;
    .end local v20    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v23    # "tailLength":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v24    # "tailWidth":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v25    # "scaleX":D
    .end local v27    # "lineWidth":D
    .end local v29    # "tailShapeEnum":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    :cond_9
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
