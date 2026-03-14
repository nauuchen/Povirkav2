.class public Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
.super Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.source "XSSFObjectData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ObjectData;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# instance fields
.field private oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->LOG:Lorg/apache/poi/util/POILogger;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 0
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctShape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 66
    return-void
.end method

.method protected static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 13

    .line 75
    const-string v0, "http://schemas.microsoft.com/office/drawing/2010/main"

    .line 77
    .local v0, "drawNS":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v1

    .line 80
    .local v1, "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v2

    .line 81
    .local v2, "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    .line 82
    .local v3, "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 83
    const-string v4, "Shape 1"

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 85
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v4

    .line 87
    .local v4, "extLst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v5

    .line 88
    .local v5, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    const-string/jumbo v6, "{63B3BB69-23CF-44E3-9099-C40C66FF867C}"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->setUri(Ljava/lang/String;)V

    .line 89
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 90
    .local v6, "cur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 91
    new-instance v7, Ljavax/xml/namespace/QName;

    const-string v8, "http://schemas.microsoft.com/office/drawing/2010/main"

    const-string v9, "compatExt"

    const-string v10, "a14"

    invoke-direct {v7, v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljavax/xml/namespace/QName;)V

    .line 92
    invoke-interface {v6, v10, v8}, Lorg/apache/xmlbeans/XmlCursor;->insertNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v7, "spid"

    const-string v8, "_x0000_s1"

    invoke-interface {v6, v7, v8}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 96
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    .line 98
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v7

    .line 99
    .local v7, "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v8

    .line 100
    .local v8, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v9

    .line 101
    .local v9, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    const-wide/16 v10, 0x0

    invoke-interface {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 102
    invoke-interface {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 103
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v12

    .line 104
    .local v12, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v12, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 105
    invoke-interface {v12, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 107
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v10

    .line 108
    .local v10, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 109
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 111
    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 113
    .end local v1    # "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .end local v2    # "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
    .end local v3    # "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v4    # "extLst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
    .end local v5    # "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    .end local v6    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    .end local v7    # "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .end local v8    # "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .end local v9    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v10    # "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .end local v12    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v1
.end method


# virtual methods
.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 179
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOLE2ClassName()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->getProgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 141
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    .line 155
    .local v0, "pdp":Lorg/apache/poi/POIXMLDocumentPart;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    :goto_0
    return-object v1

    .line 152
    .end local v0    # "pdp":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Invalid ole object found in sheet container"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    .line 130
    .local v0, "shapeId":J
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->readOleObject(J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    .line 131
    if-eqz v2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Ole object not found in sheet container - it\'s probably a control element"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v0    # "shapeId":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    return-object v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 4

    .line 199
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 201
    .local v0, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    const-string v1, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v2, "objectPr"

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v3, "id"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "blipId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    .line 205
    .end local v1    # "blipId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 207
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method protected getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public hasDirectoryEntry()Z
    .locals 8

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 163
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 164
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "can\'t determine if directory entry exists"

    aput-object v7, v6, v2

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    nop

    .line 169
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
