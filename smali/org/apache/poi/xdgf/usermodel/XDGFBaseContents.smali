.class public Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "XDGFBaseContents.java"


# instance fields
.field protected _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected _pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

.field protected _shapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field protected _toplevelShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method protected addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xdgf/usermodel/XDGFShape;>;"
    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 105
    .local v2, "subshape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    .end local v2    # "subshape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    goto :goto_0

    .line 106
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 118
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    .line 119
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShapeById(J)Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 2
    .param p1, "id"    # J

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method public getShapes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getShapesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 10

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->isSetShapes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;->getShapeArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    .local v3, "shapeSheet":Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    new-instance v4, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v4, v3, p0, v5}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 75
    .local v4, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    .line 73
    .end local v3    # "shapeSheet":Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .end local v4    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->isSetConnects()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->getConnects()Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;->getConnectArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 83
    .local v3, "connect":Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromSheet()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 84
    .local v4, "from":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToSheet()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 86
    .local v5, "to":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    if-eqz v4, :cond_2

    .line 89
    if-eqz v5, :cond_1

    .line 92
    iget-object v6, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;

    invoke-direct {v7, v3, v4, v5}, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v3    # "connect":Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    .end local v4    # "from":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .end local v5    # "to":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    .restart local v3    # "connect":Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    .restart local v4    # "from":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .restart local v5    # "to":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    :cond_1
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Connect; Invalid to id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToSheet()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 87
    :cond_2
    new-instance v6, Lorg/apache/poi/POIXMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Connect; Invalid from id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromSheet()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "connect":Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    .end local v4    # "from":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .end local v5    # "to":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 155
    .local v1, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisiting; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    goto :goto_0

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1

    .line 157
    .end local v0    # "e":Lorg/apache/poi/POIXMLException;
    :catch_1
    move-exception v0

    .line 161
    :goto_1
    nop

    .line 162
    return-void
.end method
