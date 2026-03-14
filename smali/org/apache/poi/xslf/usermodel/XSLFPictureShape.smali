.class public Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "XSLFPictureShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/PictureShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 59
    return-void
.end method

.method static prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 8
    .param p0, "shapeId"    # I
    .param p1, "rel"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    .line 68
    .local v0, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v1

    .line 69
    .local v1, "nvSpPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 70
    .local v2, "cnv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 71
    add-int/lit8 v3, p0, 0x1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 72
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    .line 73
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 75
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v3

    .line 76
    .local v3, "blipFill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v4

    .line 77
    .local v4, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 78
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 80
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v5

    .line 81
    .local v5, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v6

    .line 82
    .local v6, "prst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 83
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 84
    return-object v0
.end method


# virtual methods
.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 20
    .param p1, "sh"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 200
    invoke-super/range {p0 .. p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 202
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 203
    .local v0, "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "blipId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "relId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    .line 207
    .local v3, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v4

    .line 208
    .local v4, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 210
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v5

    .line 211
    .local v5, "nvPr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetCustDataLst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetCustDataLst()V

    .line 215
    :cond_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->isSetExtLst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v6

    .line 218
    .local v6, "extLst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v7

    .local v7, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 219
    .local v10, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    const-string v11, "declare namespace a14=\'http://schemas.microsoft.com/office/drawing/2010/main\' $this//a14:imgProps/a14:imgLayer"

    .line 220
    .local v11, "xpath":Ljava/lang/String;
    invoke-interface {v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v12

    .line 221
    .local v12, "obj":[Lorg/apache/xmlbeans/XmlObject;
    if-eqz v12, :cond_1

    array-length v13, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 222
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v13

    .line 223
    .local v13, "c":Lorg/apache/xmlbeans/XmlCursor;
    new-instance v14, Ljavax/xml/namespace/QName;

    const-string v15, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    move-object/from16 v16, v1

    .end local v1    # "blipId":Ljava/lang/String;
    .local v16, "blipId":Ljava/lang/String;
    const-string v1, "embed"

    invoke-direct {v14, v15, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, "id":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "relId":Ljava/lang/String;
    .local v17, "relId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v18

    move-object/from16 v19, v0

    .end local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .local v19, "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "newId":Ljava/lang/String;
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, v15, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->setAttributeText(Ljavax/xml/namespace/QName;Ljava/lang/String;)Z

    .line 226
    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_1

    .line 221
    .end local v13    # "c":Lorg/apache/xmlbeans/XmlCursor;
    .end local v14    # "id":Ljava/lang/String;
    .end local v16    # "blipId":Ljava/lang/String;
    .end local v17    # "relId":Ljava/lang/String;
    .end local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .local v0, "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .restart local v1    # "blipId":Ljava/lang/String;
    .restart local v2    # "relId":Ljava/lang/String;
    :cond_1
    move-object/from16 v19, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 218
    .end local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .end local v1    # "blipId":Ljava/lang/String;
    .end local v2    # "relId":Ljava/lang/String;
    .end local v10    # "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    .end local v11    # "xpath":Ljava/lang/String;
    .end local v12    # "obj":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v16    # "blipId":Ljava/lang/String;
    .restart local v17    # "relId":Ljava/lang/String;
    .restart local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v0, v19

    goto :goto_0

    .end local v16    # "blipId":Ljava/lang/String;
    .end local v17    # "relId":Ljava/lang/String;
    .end local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .restart local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .restart local v1    # "blipId":Ljava/lang/String;
    .restart local v2    # "relId":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .end local v1    # "blipId":Ljava/lang/String;
    .end local v2    # "relId":Ljava/lang/String;
    .restart local v16    # "blipId":Ljava/lang/String;
    .restart local v17    # "relId":Ljava/lang/String;
    .restart local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    goto :goto_2

    .line 215
    .end local v6    # "extLst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
    .end local v7    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .end local v16    # "blipId":Ljava/lang/String;
    .end local v17    # "relId":Ljava/lang/String;
    .end local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .restart local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .restart local v1    # "blipId":Ljava/lang/String;
    .restart local v2    # "relId":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 231
    .end local v0    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .end local v1    # "blipId":Ljava/lang/String;
    .end local v2    # "relId":Ljava/lang/String;
    .restart local v16    # "blipId":Ljava/lang/String;
    .restart local v17    # "relId":Ljava/lang/String;
    .restart local v19    # "p":Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    :goto_2
    return-void
.end method

.method protected getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    return-object v0
.end method

.method protected getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 6

    .line 156
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    .line 157
    .local v0, "ct":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    .line 158
    .local v1, "bfp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    if-eqz v1, :cond_0

    .line 159
    return-object v1

    .line 162
    :cond_0
    const-string v2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\'; declare namespace mc=\'http://schemas.openxmlformats.org/markup-compatibility/2006\' .//mc:Fallback/p:blipFill"

    .line 167
    .local v2, "xquery":Ljava/lang/String;
    const-class v3, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 169
    .local v3, "xo":Lorg/apache/xmlbeans/XmlObject;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v4
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 172
    nop

    .line 173
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v4

    return-object v4

    .line 170
    :catch_0
    move-exception v4

    .line 171
    .local v4, "xe":Lorg/apache/xmlbeans/XmlException;
    const/4 v5, 0x0

    return-object v5
.end method

.method protected getBlipId()Ljava/lang/String;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    return-object v0
.end method

.method protected getBlipLink()Ljava/lang/String;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_0
    return-object v0
.end method

.method public getClipping()Ljava/awt/Insets;
    .locals 6

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object v0

    .line 195
    .local v0, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/Insets;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getT()I

    move-result v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getL()I

    move-result v3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getB()I

    move-result v4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getR()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/Insets;-><init>(IIII)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 5

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "blipId":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 110
    .local v1, "p":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    .line 111
    .local v2, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-eqz v2, :cond_1

    .line 113
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 114
    .local v3, "imgPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v4, v3}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v3    # "imgPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/poi/POIXMLException;

    invoke-direct {v4, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v0    # "blipId":Ljava/lang/String;
    .end local v1    # "p":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    return-object v0
.end method

.method public getPictureLink()Ljava/net/URI;
    .locals 4

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    return-object v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "rId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 144
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 148
    .local v2, "p":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    .line 149
    .local v3, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    return-object v1

    .line 152
    :cond_2
    return-object v1
.end method

.method public isExternalLinkedPicture()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 126
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 127
    return-void
.end method
