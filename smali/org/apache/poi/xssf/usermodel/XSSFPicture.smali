.class public final Lorg/apache/poi/xssf/usermodel/XSSFPicture;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "XSSFPicture.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;


# instance fields
.field private ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
    .locals 0
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctPicture"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    .line 76
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 78
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    .line 79
    return-void
.end method

.method protected static getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;
    .locals 5
    .param p0, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p1, "type"    # I

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 243
    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1}, Ljava/awt/Dimension;-><init>()V

    return-object v1
.end method

.method protected static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 11

    .line 87
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v0

    .line 89
    .local v0, "pic":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v1

    .line 90
    .local v1, "nvpr":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 91
    .local v2, "nvProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 92
    const-string v3, "Picture 1"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 93
    const-string v3, "Picture"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    .line 94
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object v3

    .line 95
    .local v3, "nvPicProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    .line 97
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v4

    .line 98
    .local v4, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 99
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 101
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v5

    .line 102
    .local v5, "sppr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v6

    .line 103
    .local v6, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    .line 105
    .local v7, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 106
    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 108
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v10

    .line 109
    .local v10, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v10, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 110
    invoke-interface {v10, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 112
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v8

    .line 113
    .local v8, "prstGeom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 114
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 116
    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    .line 118
    .end local v0    # "pic":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .end local v1    # "nvpr":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;
    .end local v2    # "nvProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v3    # "nvPicProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    .end local v4    # "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .end local v5    # "sppr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .end local v6    # "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .end local v7    # "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v8    # "prstGeom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .end local v10    # "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-object v0
.end method


# virtual methods
.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-object v0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    .line 277
    .local v0, "a":Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 3

    .line 253
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    .line 254
    .local v0, "picData":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPictureType()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "blipId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    return-object v1
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 200
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1
    .param p1, "scale"    # D

    .line 210
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 4
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 221
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/ImageUtils;->setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;

    move-result-object v0

    .line 222
    .local v0, "dim":Ljava/awt/Dimension;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v1

    .line 223
    .local v1, "size2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 224
    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 225
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v2

    return-object v2
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public resize()V
    .locals 2

    .line 146
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(D)V

    .line 147
    return-void
.end method

.method public resize(D)V
    .locals 0
    .param p1, "scale"    # D

    .line 155
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(DD)V

    .line 156
    return-void
.end method

.method public resize(DD)V
    .locals 6
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 178
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    .line 180
    .local v0, "anchor":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v1

    .line 182
    .local v1, "pref":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 183
    .local v2, "row2":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 185
    .local v3, "col2":I
    invoke-virtual {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    .line 187
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 189
    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 191
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    .line 192
    return-void
.end method

.method protected setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 2
    .param p1, "rel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 128
    return-void
.end method
