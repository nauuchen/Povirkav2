.class public Lorg/apache/poi/sl/draw/geom/PresetGeometries;
.super Ljava/util/LinkedHashMap;
.source "PresetGeometries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/apache/poi/sl/draw/geom/CustomGeometry;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BINDING_PACKAGE:Ljava/lang/String; = "org.apache.poi.sl.draw.binding"

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field protected static _inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public static convertCustomGeometry(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 6
    .param p0, "staxReader"    # Ljavax/xml/stream/XMLStreamReader;

    .line 92
    :try_start_0
    const-string v0, "org.apache.poi.sl.draw.binding"

    invoke-static {v0}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    .line 93
    .local v0, "jaxbContext":Ljavax/xml/bind/JAXBContext;
    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v1

    .line 94
    .local v1, "unmarshaller":Ljavax/xml/bind/Unmarshaller;
    const-class v2, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-interface {v1, p0, v2}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v2

    .line 95
    .local v2, "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    new-instance v3, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {v2}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-direct {v3, v4}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 96
    .end local v0    # "jaxbContext":Ljavax/xml/bind/JAXBContext;
    .end local v1    # "unmarshaller":Ljavax/xml/bind/Unmarshaller;
    .end local v2    # "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljavax/xml/bind/JAXBException;
    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Unable to parse single custom geometry"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 98
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    .locals 4

    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    .local v1, "lInst":Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :try_start_1
    const-string v2, "presetShapeDefinitions.xml"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .local v2, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->init(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    nop

    .line 117
    .end local v2    # "is":Ljava/io/InputStream;
    nop

    .line 118
    :try_start_4
    sput-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 113
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local v1    # "lInst":Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "lInst":Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 121
    .end local v1    # "lInst":Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->_inst:Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v1

    .line 102
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Ljava/io/InputStream;)V
    .locals 19
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .line 56
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;

    invoke-direct {v1, v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;-><init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries;)V

    .line 63
    .local v1, "startElementFilter":Ljavax/xml/stream/EventFilter;
    invoke-static {}, Lorg/apache/poi/util/StaxHelper;->newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v2

    .line 64
    .local v2, "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v4

    .line 65
    .local v4, "staxReader":Ljavax/xml/stream/XMLEventReader;
    invoke-virtual {v2, v4, v1}, Ljavax/xml/stream/XMLInputFactory;->createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v5

    .line 67
    .local v5, "staxFiltRd":Ljavax/xml/stream/XMLEventReader;
    invoke-interface {v5}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    .line 69
    const-string v6, "org.apache.poi.sl.draw.binding"

    invoke-static {v6}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v6

    .line 70
    .local v6, "jaxbContext":Ljavax/xml/bind/JAXBContext;
    invoke-virtual {v6}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v7

    .line 72
    .local v7, "unmarshaller":Ljavax/xml/bind/Unmarshaller;
    const-wide/16 v8, 0x0

    .line 73
    .local v8, "cntElem":J
    :goto_0
    invoke-interface {v5}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 74
    invoke-interface {v5}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v10

    check-cast v10, Ljavax/xml/stream/events/StartElement;

    .line 75
    .local v10, "evRoot":Ljavax/xml/stream/events/StartElement;
    invoke-interface {v10}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "name":Ljava/lang/String;
    const-class v12, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-interface {v7, v4, v12}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/stream/XMLEventReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v12

    .line 77
    .local v12, "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    invoke-virtual {v12}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    .line 78
    .local v13, "cus":Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    .line 80
    invoke-virtual {v0, v11}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 81
    sget-object v14, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    .end local v1    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .local v17, "startElementFilter":Ljavax/xml/stream/EventFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    .end local v2    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    .local v18, "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    const-string v2, "Duplicate definition of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    const/4 v1, 0x5

    invoke-virtual {v14, v1, v15}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    .end local v17    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .end local v18    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    .restart local v1    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .restart local v2    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 83
    .end local v1    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .end local v2    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    .restart local v17    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .restart local v18    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    :goto_1
    new-instance v1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v1, v13}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V

    invoke-virtual {v0, v11, v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v10    # "evRoot":Ljavax/xml/stream/events/StartElement;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "el":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;>;"
    .end local v13    # "cus":Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_0

    .line 85
    .end local v17    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .end local v18    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    .restart local v1    # "startElementFilter":Ljavax/xml/stream/EventFilter;
    .restart local v2    # "staxFactory":Ljavax/xml/stream/XMLInputFactory;
    :cond_1
    return-void
.end method
