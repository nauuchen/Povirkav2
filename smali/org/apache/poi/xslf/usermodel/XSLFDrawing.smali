.class public Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
.super Ljava/lang/Object;
.source "XSLFDrawing.java"


# instance fields
.field private _shapeId:I

.field private _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
    .locals 10
    .param p1, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .param p2, "spTree"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    .line 42
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 43
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:cNvPr"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 46
    .local v0, "cNvPr":[Lorg/apache/xmlbeans/XmlObject;
    move-object v1, v0

    .local v1, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 49
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v5, v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-eqz v5, :cond_0

    .line 50
    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    .line 51
    .local v5, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    iget v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    int-to-long v6, v6

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    iput v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    .line 46
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-void
.end method


# virtual methods
.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    .line 58
    .local v0, "sp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 59
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 60
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 61
    return-object v1
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v0

    .line 82
    .local v0, "sp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 83
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 84
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 85
    sget-object v2, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->setLineColor(Ljava/awt/Color;)V

    .line 86
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->setLineWidth(D)V

    .line 87
    return-object v1
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    .line 66
    .local v0, "sp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 67
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 68
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 69
    return-object v1
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 3

    .line 91
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    .line 92
    .local v0, "obj":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 93
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 94
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 95
    return-object v1
.end method

.method public createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    .line 100
    .local v0, "obj":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 101
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 102
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 103
    return-object v1
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    .line 108
    .local v0, "obj":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 109
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 110
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 111
    return-object v1
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    .line 74
    .local v0, "sp":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 75
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 76
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 77
    return-object v1
.end method
