.class public Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "XSLFGraphicFrame.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/GraphicalFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 52
    return-void
.end method

.method private copyDiagram(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V
    .locals 18
    .param p1, "objData"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    .param p2, "srcShape"    # Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    .line 159
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v1, "declare namespace dgm=\'http://schemas.openxmlformats.org/drawingml/2006/diagram\' $this//dgm:relIds"

    .line 160
    .local v1, "xpath":Ljava/lang/String;
    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 161
    .local v3, "obj":[Lorg/apache/xmlbeans/XmlObject;
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 162
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 164
    .local v4, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    .line 166
    .local v5, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    :try_start_0
    new-instance v6, Ljavax/xml/namespace/QName;

    const-string v7, "dm"

    invoke-direct {v6, v0, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "dm":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v7

    .line 168
    .local v7, "dmRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    .line 169
    .local v8, "dmPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 171
    new-instance v9, Ljavax/xml/namespace/QName;

    const-string v10, "lo"

    invoke-direct {v9, v0, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "lo":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v10

    .line 173
    .local v10, "loRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v11

    .line 174
    .local v11, "loPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 176
    new-instance v12, Ljavax/xml/namespace/QName;

    const-string v13, "qs"

    invoke-direct {v12, v0, v13}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v12}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "qs":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v13

    .line 178
    .local v13, "qsRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v14

    .line 179
    .local v14, "qsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 181
    new-instance v15, Ljavax/xml/namespace/QName;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v1

    .end local v1    # "xpath":Ljava/lang/String;
    .local v16, "xpath":Ljava/lang/String;
    :try_start_1
    const-string v1, "cs"

    invoke-direct {v15, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v15}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "cs":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    .line 183
    .local v1, "csRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v15

    invoke-virtual {v15, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v15

    .line 184
    .local v15, "csPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    move-object/from16 v17, v0

    .end local v0    # "cs":Ljava/lang/String;
    .local v17, "cs":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0, v1, v15}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    nop

    .line 189
    .end local v1    # "csRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v6    # "dm":Ljava/lang/String;
    .end local v7    # "dmRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v8    # "dmPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v9    # "lo":Ljava/lang/String;
    .end local v10    # "loRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v11    # "loPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v12    # "qs":Ljava/lang/String;
    .end local v13    # "qsRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v14    # "qsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v15    # "csPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v17    # "cs":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v16    # "xpath":Ljava/lang/String;
    .local v1, "xpath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    .line 187
    .end local v1    # "xpath":Ljava/lang/String;
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .restart local v16    # "xpath":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .end local v4    # "c":Lorg/apache/xmlbeans/XmlCursor;
    .end local v5    # "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .end local v16    # "xpath":Ljava/lang/String;
    .restart local v1    # "xpath":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v1

    .line 191
    .end local v1    # "xpath":Ljava/lang/String;
    .restart local v16    # "xpath":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method static create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
    .locals 2
    .param p0, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .param p1, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 88
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "http://schemas.openxmlformats.org/drawingml/2006/table"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTable;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    .line 92
    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method


# virtual methods
.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 3
    .param p1, "sh"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 145
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v0

    .line 148
    .local v0, "data":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->copyDiagram(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V

    .line 155
    :cond_0
    return-void
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 21

    .line 60
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 61
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 62
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    .line 63
    .local v2, "x":D
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v13

    .line 64
    .local v13, "y":D
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v15

    .line 65
    .local v15, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v16

    .line 66
    .local v16, "cx":D
    invoke-interface {v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v18

    .line 67
    .local v18, "cy":D
    new-instance v20, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v4, v20

    move-wide v5, v2

    move-wide v7, v13

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v20
.end method

.method public bridge synthetic getFallbackPicture()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getFallbackPicture()Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackPicture()Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 10

    .line 195
    const-string v0, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\'; declare namespace mc=\'http://schemas.openxmlformats.org/markup-compatibility/2006\' .//mc:Fallback/*/p:pic"

    .line 200
    .local v0, "xquery":Ljava/lang/String;
    const-class v1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 201
    .local v1, "xo":Lorg/apache/xmlbeans/XmlObject;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 202
    return-object v2

    .line 207
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlObject;->newDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v4
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .local v4, "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    nop

    .line 213
    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->sizeOfPicArray()I

    move-result v5

    if-nez v5, :cond_1

    .line 214
    return-object v2

    .line 217
    :cond_1
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v2

    .line 208
    .end local v4    # "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    :catch_0
    move-exception v4

    move-object v5, v2

    .line 209
    .local v4, "e":Lorg/apache/xmlbeans/XmlException;
    .local v5, "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    sget-object v6, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Can\'t parse fallback picture stream of graphical frame"

    aput-object v9, v8, v3

    const/4 v3, 0x1

    aput-object v4, v8, v3

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 210
    return-object v2
.end method

.method public getFlipHorizontal()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getFlipVertical()Z
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation()D
    .locals 2

    .line 119
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 11
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    .line 73
    .local v0, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    .line 74
    .local v1, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    .line 75
    .local v2, "x":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    .line 76
    .local v4, "y":J
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 77
    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 78
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v6

    .line 80
    .local v6, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    int-to-long v7, v7

    .line 81
    .local v7, "cx":J
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    int-to-long v9, v9

    .line 82
    .local v9, "cy":J
    invoke-interface {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 83
    invoke-interface {v6, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 84
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 2
    .param p1, "flip"    # Z

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlipVertical(Z)V
    .locals 2
    .param p1, "flip"    # Z

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRotation(D)V
    .locals 2
    .param p1, "theta"    # D

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
