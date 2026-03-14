.class public Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "XSLFConnectorShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ConnectorShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 44
    return-void
.end method

.method static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
    .locals 6
    .param p0, "shapeId"    # I

    .line 50
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v0

    .line 51
    .local v0, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->addNewNvCxnSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;

    move-result-object v1

    .line 52
    .local v1, "nvSpPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 53
    .local v2, "cnv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connector "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 54
    add-int/lit8 v3, p0, 0x1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 55
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewCNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;

    .line 56
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 57
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v3

    .line 58
    .local v3, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v4

    .line 59
    .local v4, "prst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 60
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 61
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    .line 62
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    move-result-object v0

    return-object v0
.end method

.method public getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 2
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 76
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "A connector shape can\'t be a placeholder."

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
