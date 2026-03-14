.class public final Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "XSSFShapeGroup.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        "Lorg/apache/poi/ss/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# static fields
.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;


# instance fields
.field private ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V
    .locals 0
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctGroup"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 57
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    .line 58
    return-void
.end method

.method protected static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    .locals 11

    .line 64
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v0

    .line 67
    .local v0, "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;

    move-result-object v1

    .line 68
    .local v1, "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 69
    .local v2, "nvpr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 70
    const-string v5, "Group 0"

    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;->addNewCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;

    .line 72
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v5

    .line 73
    .local v5, "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v6

    .line 74
    .local v6, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    .line 75
    .local v7, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface {v7, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 76
    invoke-interface {v7, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 77
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v8

    .line 78
    .local v8, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v8, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 79
    invoke-interface {v8, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 80
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v9

    .line 81
    .local v9, "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface {v9, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 82
    invoke-interface {v9, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 83
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v10

    .line 84
    .local v10, "p4":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v10, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 85
    invoke-interface {v10, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 87
    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    .line 89
    .end local v0    # "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    .end local v1    # "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;
    .end local v2    # "nvpr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v5    # "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .end local v6    # "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    .end local v7    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v8    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .end local v9    # "p3":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v10    # "p4":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    return-object v0
.end method


# virtual methods
.method public createConnector(Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    .locals 4
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;

    .line 138
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v0

    .line 139
    .local v0, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 141
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    .line 142
    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    iput-object p0, v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    .line 143
    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 144
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->getCTConnector()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;->getCTTransform2D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 145
    return-object v1
.end method

.method public createGroup(Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 5
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v0

    .line 177
    .local v0, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 179
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    .line 180
    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    iput-object p0, v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    .line 181
    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 185
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getCTGroupShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v2

    .line 186
    .local v2, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;->getCTTransform2D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    .line 187
    .local v3, "t2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setOff(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    .line 188
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    .line 190
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setChExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    .line 191
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipH(Z)V

    .line 192
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipV(Z)V

    .line 194
    return-object v1
.end method

.method public createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 4
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 159
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v1

    .line 160
    .local v1, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 162
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    .line 163
    .local v2, "shape":Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    iput-object p0, v2, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    .line 164
    iput-object p1, v2, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 165
    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    .line 166
    return-object v2
.end method

.method public createSimpleShape(Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    .locals 4
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    .line 120
    .local v0, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 122
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 123
    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    iput-object p0, v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    .line 124
    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 125
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;->getCTTransform2D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 126
    return-object v1
.end method

.method public createTextbox(Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    .locals 4
    .param p1, "anchor"    # Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    .line 101
    .local v0, "ctShape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 103
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 104
    .local v1, "shape":Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    iput-object p0, v1, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    .line 105
    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 106
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;->getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFChildAnchor;->getCTTransform2D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 107
    return-object v1
.end method

.method public getCTGroupShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    return-object v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported for shape group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 229
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes(Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setCoordinates(IIII)V
    .locals 7
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 207
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->ctGroup:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    .line 208
    .local v0, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 209
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 210
    int-to-long v2, p2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 211
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    .line 212
    .local v2, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    int-to-long v3, p3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 213
    int-to-long v3, p4

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 215
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    .line 216
    .local v3, "chOff":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 217
    int-to-long v4, p2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 218
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v4

    .line 219
    .local v4, "chExt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    int-to-long v5, p3

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 220
    int-to-long v5, p4

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 221
    return-void
.end method
