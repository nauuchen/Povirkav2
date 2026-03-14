.class public final Lorg/apache/poi/xssf/usermodel/XSSFConnector;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "XSSFConnector.java"


# static fields
.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;


# instance fields
.field private ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V
    .locals 0
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctShape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 57
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    .line 58
    return-void
.end method

.method protected static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    .locals 15

    .line 65
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v0

    .line 67
    .local v0, "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->addNewNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;

    move-result-object v1

    .line 68
    .local v1, "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 69
    .local v2, "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 70
    const-string v5, "Shape 1"

    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;->addNewCNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;

    .line 73
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v5

    .line 74
    .local v5, "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v6

    .line 75
    .local v6, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    .line 76
    .local v7, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 77
    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 78
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v10

    .line 79
    .local v10, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v10, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 80
    invoke-interface {v10, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 82
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v11

    .line 83
    .local v11, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 84
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 86
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v12

    .line 87
    .local v12, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->addNewLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v13

    invoke-interface {v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v13

    .line 88
    .local v13, "scheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    .line 89
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v14

    invoke-interface {v14, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->setIdx(J)V

    .line 91
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->addNewFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v3

    .line 92
    .local v3, "fillref":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->setIdx(J)V

    .line 93
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {v4, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    .line 95
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->addNewEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v4

    .line 96
    .local v4, "effectRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    invoke-interface {v4, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->setIdx(J)V

    .line 97
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v8

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    .line 99
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->addNewFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v8

    .line 100
    .local v8, "fontRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;->MINOR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->setIdx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;)V

    .line 101
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v9

    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->TX_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {v9, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    .line 103
    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    .line 105
    .end local v0    # "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    .end local v1    # "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;
    .end local v2    # "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v3    # "fillref":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .end local v4    # "effectRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .end local v5    # "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .end local v6    # "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .end local v7    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v8    # "fontRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
    .end local v10    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .end local v11    # "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .end local v12    # "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .end local v13    # "scheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    return-object v0
.end method


# virtual methods
.method public getCTConnector()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    return-object v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->getNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnectorNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public getShapeType()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->intValue()I

    move-result v0

    return v0
.end method

.method public setShapeType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 130
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 131
    return-void
.end method
